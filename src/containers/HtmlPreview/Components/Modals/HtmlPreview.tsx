//TODO: mapStateToProps KONTROL EDİLECEK!
import { Button, Col, message, Modal, Row } from 'antd';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { ThemeModel } from '../../../../common/models';
import { firstTheme } from '../../../../components/Themes/EArchive/FirstTheme/ImageBase64/FirstThemeDefault';
import { fourthTheme } from '../../../../components/Themes/EArchive/FourthTheme/ImageBase64/FourthThemeDefault';
import { secondTheme } from '../../../../components/Themes/EArchive/SecondTheme/ImageBase64/SecondThemeDefault';
import { thirdTheme } from '../../../../components/Themes/EArchive/ThirdTheme/ImageBase64/ThirdThemeDefault';
import { selectedTheme } from '../../actions';
import '../../Style.scss';
import { HtmlPreviewStateType } from '../../types';
import ThemeCard from '../Cards/ThemeCard';
interface IProps {
  open: boolean;
  close: () => void;
  selected: ThemeModel;
}

interface IPropsFromDispatch {
  selectedTheme: typeof selectedTheme;
}

type AllProps = IProps & IPropsFromDispatch;

class HtmlPreview extends Component<AllProps> {
  selectedFristTheme = () => {
    this.props.selectedTheme(1);
    message.success('1.Tema Seçildi.', 1.5);
  };

  selectedSecondTheme = () => {
    this.props.selectedTheme(2);
    message.success('2.Tema Seçildi.', 1.5);
  };

  selectedThirdTheme = () => {
    this.props.selectedTheme(3);
    message.success('3.Tema Seçildi.', 1.5);
  };

  selectedFourthTheme = () => {
    this.props.selectedTheme(4);
    message.success('4.Tema Seçildi.', 1.5);
  };

  render() {
    const { Theme } = this.props.selected;
    return (
      <Modal
        title="Tema Seçimi"
        onCancel={() => {
          this.props.close();
          this.props.selectedTheme(1);
        }}
        width={1076}
        visible={this.props.open}
        footer={[
          <Button key="ok" type="primary" icon="check" onClick={() => this.props.close()}>
            TAMAM
          </Button>
        ]}
      >
        <div className="gutter-example">
          <Row gutter={16} style={{ marginBottom: 20 }}>
            <Col className="gutter-row">
              <strong>Tema Seçimi Yaptıktan Sonra "Tamam" Butonuna Tıklayabilirsiniz.</strong>
            </Col>
          </Row>
          <Row gutter={16}>
            <Col className="gutter-row" span={12}>
              <ThemeCard
                selected={this.selectedFristTheme}
                theme={firstTheme}
                title="1.Tasarım"
                description="www.nesbilgi.com.tr"
                shadow={Theme === 1 ? '5px 10px 18px #888888' : '5px 10px 8px #ffffff'}
              />
            </Col>
            <Col className="gutter-row" span={12}>
              <ThemeCard
                selected={this.selectedSecondTheme}
                theme={secondTheme}
                title="2.Tasarım"
                description="www.nesbilgi.com.tr"
                shadow={Theme === 2 ? '5px 10px 18px #888888' : '5px 10px 8px #ffffff'}
              />
            </Col>
          </Row>
          <Row gutter={16} style={{ marginTop: 20 }}>
            <Col className="gutter-row" span={12}>
              <ThemeCard
                selected={this.selectedThirdTheme}
                theme={thirdTheme}
                title="3.Tasarım"
                description="www.nesbilgi.com.tr"
                shadow={Theme === 3 ? '5px 10px 18px #888888' : '5px 10px 8px #ffffff'}
              />
            </Col>
            <Col className="gutter-row" span={12}>
              <ThemeCard
                selected={this.selectedFourthTheme}
                theme={fourthTheme}
                title="4.Tasarım"
                description="www.nesbilgi.com.tr"
                shadow={Theme === 4 ? '5px 10px 18px #888888' : '5px 10px 8px #ffffff'}
              />
            </Col>
          </Row>
          <Row gutter={16} style={{ marginTop: 20 }}>
            <Col style={{ textAlign: 'center' }} className="gutter-row">
              <strong style={{ color: '#de0000' }}>Not:</strong> Özel Tasarım Yaptırmak İçin (0216 688 51 00) Nolu
              Telefonu Arayarak Satış Temsilcimiz İle Görüşebilirsiniz!
            </Col>
          </Row>
        </div>
      </Modal>
    );
  }
}

const mapStateToProps = ({ htmlPreview }: HtmlPreviewStateType) => ({
  selected: htmlPreview.selected
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  selectedTheme: (params: number) => dispatch(selectedTheme(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(HtmlPreview);
