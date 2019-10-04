import { faCropAlt } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Button, Card, Col, Empty, Icon, message, Modal, Row, Slider } from 'antd';
import React, { Component } from 'react';
import Cropper from 'react-easy-crop';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { SignatureModel } from '../../../../common/models';
import {
  fileReaderSignatureSrc,
  showCroppedSignature,
  signatureOnCrop,
  signatureOnCropComplete,
  signatureOnZoom
} from '../../actions';
import { LogoAndSignatureStateType } from '../../types';
import getCroppedImg from './cropImage';
import ImgDialog from './ImgDialog';
import './styles.scss';

interface IProps {
  croped: SignatureModel;
}

interface IPropsFromDispatch {
  signatureOnCrop: typeof signatureOnCrop;
  signatureOnCropComplete: typeof signatureOnCropComplete;
  signatureOnZoom: typeof signatureOnZoom;
  showCroppedSignature: typeof showCroppedSignature;
  fileReaderSignatureSrc: typeof fileReaderSignatureSrc;
}

type AllProps = IProps & IPropsFromDispatch;

class Signature extends Component<AllProps> {
  onSignatureFile = (e: any) => {
    if (e.target.files && e.target.files.length > 0) {
      const reader = new FileReader();
      reader.addEventListener('load', () => this.props.fileReaderSignatureSrc(reader.result));
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

  signatureOnCropChange = crop => {
    this.props.signatureOnCrop(crop);
  };

  signatureOnCropComplete = (croppedArea, croppedAreaPixels) => {
    this.props.signatureOnCropComplete(croppedAreaPixels);
  };

  signatureOnZoomChange = zoom => {
    this.props.signatureOnZoom(zoom);
  };

  render() {
    const { signatureSrc, signatureCroppedImage, signatureCroppedAreaPixels } = this.props.croped;

    const showCroppedSignature = async () => {
      const croppedImage = await getCroppedImg(signatureSrc, signatureCroppedAreaPixels);
      console.log('croppedImage', croppedImage);
      this.props.showCroppedSignature(croppedImage);
    };

    function preview() {
      const modal = Modal.success({
        width: 594,
        okText: 'Tamam',
        title: 'İmza Görüntüleme Sonucu',
        content: (
          <Card
            hoverable
            style={{ width: 450 }}
            bodyStyle={{ display: 'none' }}
            cover={
              <img
                style={{ minWidth: 450, minHeight: 450, maxWidth: 450, maxHeight: 450 }}
                src={signatureCroppedImage}
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
              <Icon type="upload" /> İmza Yükle
              <input type="file" onChange={this.onSignatureFile} />
            </Button>
            {signatureSrc && (
              <Button size="small" onClick={showCroppedSignature} style={{ marginLeft: 25 }} type="primary">
                <FontAwesomeIcon style={{ color: '#ffffff' }} icon={faCropAlt} />
                <span style={{ marginLeft: 5 }}>Kırp</span>
              </Button>
            )}
          </Col>
          <Col span={12} style={{ marginBottom: 10, textAlign: 'center' }}>
            {signatureCroppedImage ? (
              <div className="textstyle">Tasarımda Gözükecek İmza.</div>
            ) : (
              <div className="textstyle">İmza Burada Olacak!</div>
            )}
          </Col>
        </Row>
        <Row>
          <Col span={12}>
            <Card
              style={{ marginRight: 5 }}
              bodyStyle={{ minWidth: 200, minHeight: 200, maxWidth: 200, maxHeight: 200 }}
            >
              {signatureSrc ? (
                <Cropper
                  image={this.props.croped.signatureSrc}
                  crop={this.props.croped.signatureCrop}
                  zoom={this.props.croped.signatureZoom}
                  aspect={this.props.croped.signatureAspect}
                  onCropChange={this.signatureOnCropChange}
                  onCropComplete={this.signatureOnCropComplete}
                  onZoomChange={this.signatureOnZoomChange}
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
              cover={signatureCroppedImage && <ImgDialog img={signatureCroppedImage} />}
            />
          </Col>
        </Row>
        <Row>
          <Col span={12}>
            {signatureSrc && (
              <>
                <div>
                  <Slider
                    value={this.props.croped.signatureZoom}
                    min={1}
                    max={3}
                    step={0.1}
                    aria-labelledby="Zoom"
                    onChange={zoom => this.signatureOnZoomChange(zoom)}
                  />
                </div>
              </>
            )}
          </Col>
          <Col span={12} style={{ textAlign: 'center' }}>
            {signatureCroppedImage && (
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
  signatureOnCrop: (params: object | any) => dispatch(signatureOnCrop(params)),
  signatureOnCropComplete: (params: any) => dispatch(signatureOnCropComplete(params)),
  signatureOnZoom: (params: number) => dispatch(signatureOnZoom(params)),
  showCroppedSignature: (params: any) => dispatch(showCroppedSignature(params)),
  fileReaderSignatureSrc: (params: any) => dispatch(fileReaderSignatureSrc(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Signature);
