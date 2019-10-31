import { Button, Col, Modal, Row } from 'antd';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import list from '../../../../list.json';
import { selectedTemplate } from '../../actions';
import ThemeCard from '../Cards/ThemeCard';

interface IProps {
  open: boolean;
  close: () => void;
}

interface IPropsFromDispatch {
  selectedTemplate: typeof selectedTemplate;
}

type AllProps = IProps & IPropsFromDispatch;

function readTextFile(path: string) {
  var allText = '';
  var rawFile = new XMLHttpRequest();
  rawFile.open('GET', path, false);
  rawFile.onreadystatechange = function() {
    if (rawFile.readyState === 4) {
      if (rawFile.status === 200 || rawFile.status == 0) {
        allText = rawFile.responseText;
        console.log('allText', allText);
      }
    }
  };
  rawFile.send(null);
  return allText;
}

function replateWithParameters(text: string) {
  // REPLACE işlemleri gerçekleştilecek
  return text.replace('{{COMPANTINFO.NAME}}', 'companyinfo.name');
}

class TemplateSelectorModal extends Component<AllProps> {
  render() {
    const onSelected = (path: string) => {
      var htmlPath = path + 'default.html';
      console.log('DOSYA OKUNACAK VE YAZILACAK : ' + htmlPath);
      var text = readTextFile(htmlPath);
      var replacedText = replateWithParameters(text);

      this.props.selectedTemplate(text);
    };

    return (
      <Modal
        title="Tema Seçimi"
        onCancel={() => {
          this.props.close();
        }}
        width={800}
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

          {/* TODO Tema'lar 2x yada 3x satırlar şeklinde listelenecek */}
          <Row gutter={16} style={{ marginBottom: 20 }}>
            {list.map((x, index) => (
              <Col className="gutter-row">
                <ThemeCard
                  type={x.type}
                  image={x.path + 'default.jpg'}
                  title={x.title}
                  description={x.description}
                  onClick={() => onSelected(x.path)}
                />
              </Col>
            ))}
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

const mapStateToProps = () => ({});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  selectedTemplate: (params: string) => dispatch(selectedTemplate(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(TemplateSelectorModal);
