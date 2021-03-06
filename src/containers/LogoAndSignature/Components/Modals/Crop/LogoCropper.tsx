import { Alert, Button, Icon, Upload } from 'antd';
import Slider from 'antd/lib/slider';
import 'cropperjs/dist/cropper.css';
import React, { Component } from 'react';
import ReactCropper from 'react-cropper';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { logoOnCrop } from '../../../actions';
import './index.scss';

type State = {
  src: any;
  rotateTo: number;
  cropResult: any;
  refresh: boolean;
};

type Props = {
  croppedImage?: any;
};

interface IPropsFromDispatch {
  logoOnCrop: typeof logoOnCrop;
}

type AllProps = Props & IPropsFromDispatch;

class LogoCropper extends Component<AllProps> {
  state: State = {
    src: undefined,
    rotateTo: 0,
    cropResult: '',
    refresh: false
  };

  onChange = e => {
    e.preventDefault();
    let files;
    if (e.dataTransfer) {
      files = e.dataTransfer.files;
    } else if (e.target) {
      files = e.target.files;
    }
    const reader = new FileReader();
    reader.onload = () => {
      this.setState({ src: reader.result });
    };
    reader.readAsDataURL(files[0]);
  };

  cropImage = () => {
    this.setState({
      cropResult: this.cropper.current!.getCroppedCanvas().toDataURL()
    });

    if (this.cropper.current !== null) {
      this.props.logoOnCrop(this.cropper.current!.getCroppedCanvas().toDataURL());
    }
  };

  cropper = React.createRef<any>();
  preview = React.createRef<HTMLDivElement>();

  render() {
    return (
      <div>
        {(this.state.refresh === true || (this.state.src !== undefined && this.props.croppedImage === undefined)) && (
          <div>
            <div style={{ height: 300 }}>
              <div>
                <div style={{ width: '60%', height: '300px', float: 'left' }}>
                  <ReactCropper
                    ref={this.cropper}
                    style={{
                      height: 250,
                      width: '100%',
                      marginBottom: '10px'
                    }}
                    aspectRatio={NaN}
                    rotateTo={this.state.rotateTo}
                    background={false}
                    preview=".img-preview"
                    guides={false}
                    src={this.state.src}
                  />
                  <span>Döndürme</span>
                  <Slider
                    className={'no-track'}
                    onChange={value => this.setState({ rotateTo: parseInt(value.toString()) })}
                    defaultValue={this.state.rotateTo}
                    tooltipPlacement="bottom"
                    min={-180}
                    max={180}
                  />
                </div>

                <div style={{ width: '38%', float: 'right', height: 200 }}>
                  <p>
                    <b>Önizleme</b>{' '}
                    <Button style={{ float: 'right' }} onClick={this.cropImage} type="primary">
                      <Icon type="scissor" /> Kırp
                    </Button>
                  </p>

                  <div ref={this.preview} className="img-preview" style={{ width: 215, float: 'left', height: 150 }} />
                </div>
              </div>
            </div>

            {this.state.cropResult !== '' && (
              <div style={{ textAlign: 'center', marginBottom: '20px' }}>
                <h2>Kırpılmış olan logo</h2>

                <img width="200" src={this.state.cropResult} alt="Logo" />
              </div>
            )}

            <Alert
              style={{ marginBottom: '10px' }}
              message="Yukarıdaki döndürme alanını kullanarak resimi çevirebilirsiniz."
              type="info"
              showIcon
            />

            <Alert
              style={{ marginBottom: '10px' }}
              message="Mouse sürükle bırak yöntemi ile logo kapsayacak şekilde seçim yapabilirsiniz."
              type="info"
              showIcon
            />
            <Alert
              style={{ marginBottom: '10px' }}
              message="Mouse tekerleği ile resim üzerinden yakılaştırma/uzaklaştırma yapabilirsiniz. "
              type="info"
              showIcon
            />

            <Alert
              style={{ marginBottom: '10px' }}
              message="Mavi kutunun resmi tam olarak kapladığından emin olunuz. Kenarlarda boşluk kalması evrak üzerinde logonun daha uzak görünmesine sebep olacaktır."
              type="warning"
              showIcon
            />

            <Alert
              style={{ marginBottom: '10px' }}
              message="Lütfen beyaz renkli bir logo yüklemeyiniz. "
              type="error"
              showIcon
            />
          </div>
        )}

        {this.state.src === undefined && this.props.croppedImage === undefined && (
          <React.Fragment>
            <Alert
              style={{ marginBottom: '10px' }}
              message="Logo seçiniz"
              description="Fatura ve makbuz tasarımlarınızda görünmesini istediğiniz logoyu seçebilirsiniz."
              type="info"
              showIcon
            />

            <Alert
              style={{ marginBottom: '10px' }}
              message="Logo zorunlu olmadığı için dilerseniz bu adımı atlayabilirsiniz"
              type="warning"
              showIcon
            />
          </React.Fragment>
        )}

        <Upload
          onChange={info => {
            const reader = new FileReader();
            reader.onload = () => {
              this.setState({ src: reader.result, refresh: true });
            };
            reader.readAsDataURL(info.fileList.filter(x => x.uid === info.file.uid)[0].originFileObj!);
          }}
          showUploadList={false}
          defaultFileList={this.state.src}
        >
          <Button type="primary" style={{ width: '100%' }}>
            <Icon type="upload" /> Dosya Seç
          </Button>
        </Upload>
      </div>
    );
  }
}

const mapStateToProps = () => ({});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  logoOnCrop: (params: string) => dispatch(logoOnCrop(params))
});

export default connect(mapStateToProps, mapDispatchToProps)(LogoCropper);
