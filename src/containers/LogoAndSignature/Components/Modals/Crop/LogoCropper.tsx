import { Alert, Button, Icon, Slider, Upload } from 'antd';
import 'cropperjs/dist/cropper.css';
import React, { Component } from 'react';
import ReactCropper from 'react-cropper';
import './index.scss';

type State = {
  src: any;
  rotateTo: number;
  cropResult: any;
  refresh: boolean;
};

type Props = {
  croppedImage?: string;
  onDestroy: (values) => void;
};

export default class LogoCropper extends Component<Props, State> {
  componentWillUnmount() {
    if (this.cropper.current !== null) {
      this.props.onDestroy(
        this.cropper
          .current!.getCroppedCanvas({
            width: this.preview.current!.offsetWidth,
            height: this.preview.current!.offsetHeight
          })
          .toDataURL()
      );
    }
  }

  constructor(props) {
    super(props);

    this.state = {
      src: '',
      rotateTo: 0,
      cropResult: undefined,
      refresh: false
    };
  }

  cropper = React.createRef<any>();
  preview = React.createRef<HTMLDivElement>();

  render() {
    const props = {
      beforeUpload() {
        return false;
      },
      multiple: false,
      showUploadList: false,
      name: 'file'
    };

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
                    <b>Önizleme</b>
                  </p>

                  <div ref={this.preview} className="img-preview" style={{ width: 215, float: 'left', height: 150 }} />
                </div>
              </div>
            </div>

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

        {this.state.refresh !== true && this.props.croppedImage !== undefined && (
          <div style={{ textAlign: 'center', marginBottom: '20px' }}>
            <h2>Kırpılmış olan logo</h2>

            <img src={this.props.croppedImage} />
          </div>
        )}

        <Upload
          {...props}
          onChange={info => {
            const reader = new FileReader();
            reader.onload = () => {
              this.setState({ src: reader.result, refresh: true });
            };
            reader.readAsDataURL(info.fileList.filter(x => x.uid === info.file.uid)[0].originFileObj!);
          }}
        >
          <Button type="primary" style={{ width: '100%' }}>
            <Icon type="upload" /> Dosya Seç
          </Button>
        </Upload>
      </div>
    );
  }
}
