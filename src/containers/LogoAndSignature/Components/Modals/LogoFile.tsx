import { Button, Col, message, Row, Slider } from 'antd';
import React, { Component } from 'react';
import Cropper from 'react-easy-crop';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { LogoModel } from '../../../../common/models';
import { fileReaderLogoSrc, logoOnCrop, logoOnCropComplete, logoOnZoom, showCroppedLogo } from '../../actions';
import { LogoAndSignatureStateType } from '../../types';
import getCroppedImg from './cropImage';
import ImgDialog from './ImgDialog';
import './styles.scss';

interface IProps {
  croped: LogoModel;
}

interface IPropsFromDispatch {
  logoOnCrop: typeof logoOnCrop;
  logoOnCropComplete: typeof logoOnCropComplete;
  logoOnZoom: typeof logoOnZoom;
  showCroppedLogo: typeof showCroppedLogo;
  fileReaderLogoSrc: typeof fileReaderLogoSrc;
}

type AllProps = IProps & IPropsFromDispatch;

class LogoFile extends Component<AllProps> {
  onLogoFile = (e: any) => {
    if (e.target.files && e.target.files.length > 0) {
      const reader = new FileReader();
      reader.addEventListener('load', () => this.props.fileReaderLogoSrc(reader.result));
      reader.readAsDataURL(e.target.files[0]);
    }

    const isJpgOrPng = e.target.files[0].type === 'image/jpeg' || e.target.files[0].type === 'image/png';

    if (!isJpgOrPng) {
      message.error('Lütfen Dosya Uzantısı JPG veya PNG Yükleyiniz!');
      return isJpgOrPng;
    }
    const isLt2M = e.target.files[0].size / 1024 / 1024 < 2;
    if (!isLt2M) {
      message.error('Resim Boyutu Maksimum 2MB Olmalıdır!');
      return isLt2M;
    }
  };

  logoOnCropChange = crop => {
    this.props.logoOnCrop(crop);
  };

  logoOnCropComplete = (croppedArea, croppedAreaPixels) => {
    this.props.logoOnCropComplete(croppedAreaPixels);
  };

  logoOnZoomChange = zoom => {
    this.props.logoOnZoom(zoom);
  };

  render() {
    const { logoSrc, logoCroppedImage, logoCroppedAreaPixels } = this.props.croped;

    const showCroppedLogo = async () => {
      const croppedImage = await getCroppedImg(logoSrc, logoCroppedAreaPixels);
      console.log('croppedImage', croppedImage);
      this.props.showCroppedLogo(croppedImage);
    };

    return (
      <React.Fragment>
        <Row>
          <Col>
            <label className="fileContainer fileContainerFile">
              Logo Yükle
              <input type="file" onChange={this.onLogoFile} />
            </label>
          </Col>
        </Row>
        <Row>
          <Col span={12}>
            {logoSrc && (
              <div style={{ height: 200, width: 200 }}>
                <Cropper
                  image={this.props.croped.logoSrc}
                  crop={this.props.croped.logoCrop}
                  zoom={this.props.croped.logoZoom}
                  aspect={this.props.croped.logoAspect}
                  onCropChange={this.logoOnCropChange}
                  onCropComplete={this.logoOnCropComplete}
                  onZoomChange={this.logoOnZoomChange}
                />
              </div>
            )}
          </Col>
          <Col span={12}>
            {logoCroppedImage && (
              <div style={{ marginLeft: 20 }}>
                <ImgDialog img={logoCroppedImage} />
              </div>
            )}
          </Col>
        </Row>
        <Row>
          <Col span={12}>
            {logoSrc && (
              <>
                <div>
                  <Slider
                    value={this.props.croped.logoZoom}
                    min={1}
                    max={3}
                    step={0.1}
                    aria-labelledby="Zoom"
                    onChange={zoom => this.logoOnZoomChange(zoom)}
                  />
                  <Button onClick={showCroppedLogo} color="primary">
                    Logo'yu Kırp
                  </Button>
                </div>
              </>
            )}
          </Col>
        </Row>
      </React.Fragment>
    );
  }
}

const mapStateToProps = ({ logoAndSignature }: LogoAndSignatureStateType) => ({
  croped: logoAndSignature
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  logoOnCrop: (params: object | any) => dispatch(logoOnCrop(params)),
  logoOnCropComplete: (params: any) => dispatch(logoOnCropComplete(params)),
  logoOnZoom: (params: number) => dispatch(logoOnZoom(params)),
  showCroppedLogo: (params: any) => dispatch(showCroppedLogo(params)),
  fileReaderLogoSrc: (params: any) => dispatch(fileReaderLogoSrc(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LogoFile);
