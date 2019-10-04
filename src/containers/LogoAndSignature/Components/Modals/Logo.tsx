import { faCropAlt } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Button, Card, Col, Empty, Icon, message, Modal, Row, Slider } from 'antd';
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

class Logo extends Component<AllProps> {
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
      this.props.showCroppedLogo(croppedImage);
    };

    function preview() {
      const modal = Modal.success({
        width: 594,
        okText: 'Tamam',
        title: 'Logo Görüntüleme Sonucu',
        content: (
          <Card
            hoverable
            style={{ width: 450 }}
            bodyStyle={{ display: 'none' }}
            cover={
              <img
                style={{ minWidth: 450, minHeight: 450, maxWidth: 450, maxHeight: 450 }}
                src={logoCroppedImage}
                alt="Cropped"
              />
            }
          />
        )
      });
      return modal;
    }

    return (
      <Card>
        <Row>
          <Col span={12} style={{ marginBottom: 5 }}>
            <Button size="small" className="fileContainer">
              <Icon type="upload" /> Logo Yükle
              <input type="file" onChange={this.onLogoFile} />
            </Button>
            {logoSrc && (
              <Button size="small" onClick={showCroppedLogo} style={{ marginLeft: 25 }} type="primary">
                <FontAwesomeIcon style={{ color: '#ffffff' }} icon={faCropAlt} />
                <span style={{ marginLeft: 5 }}>Kırp</span>
              </Button>
            )}
          </Col>
          <Col span={12} style={{ marginBottom: 10, textAlign: 'center' }}>
            {logoCroppedImage ? (
              <div className="textstyle">Tasarımda Gözükecek Logo.</div>
            ) : (
              <div className="textstyle">Logo Burada Olacak!</div>
            )}
          </Col>
        </Row>
        <Row>
          <Col span={12}>
            <Card
              style={{ marginRight: 5 }}
              bodyStyle={{ minWidth: 200, minHeight: 200, maxWidth: 200, maxHeight: 200 }}
            >
              {logoSrc ? (
                <Cropper
                  image={this.props.croped.logoSrc}
                  crop={this.props.croped.logoCrop}
                  zoom={this.props.croped.logoZoom}
                  aspect={this.props.croped.logoAspect}
                  onCropChange={this.logoOnCropChange}
                  onCropComplete={this.logoOnCropComplete}
                  onZoomChange={this.logoOnZoomChange}
                />
              ) : (
                <Empty style={{ fontSize: 30 }} image={Empty.PRESENTED_IMAGE_SIMPLE} />
              )}
            </Card>
          </Col>
          <Col span={12}>
            <Card
              style={{ marginLeft: 5 }}
              bodyStyle={{ display: 'none' }}
              cover={logoCroppedImage && <ImgDialog img={logoCroppedImage} />}
            />
          </Col>
        </Row>
        <Row>
          <Col span={12}>
            {logoSrc && (
              <Slider
                value={this.props.croped.logoZoom}
                min={1}
                max={3}
                step={0.1}
                aria-labelledby="Zoom"
                onChange={zoom => this.logoOnZoomChange(zoom)}
              />
            )}
          </Col>
          <Col span={12} style={{ textAlign: 'center' }}>
            {logoCroppedImage && (
              <Button icon="search" style={{ marginTop: 5 }} type="primary" onClick={preview}>
                Görüntüle
              </Button>
            )}
          </Col>
        </Row>
      </Card>
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
)(Logo);
