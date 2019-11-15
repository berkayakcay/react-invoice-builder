import { Button, Col, List, Modal, Row } from 'antd';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import list from '../../../../list.json';
import { setSelectedTemplate } from '../../actions';
import ThemeCard from '../Cards/ThemeCard';

interface IProps {
  open: boolean;
  close: () => void;
}

interface IPropsFromDispatch {
  setSelectedTemplate: typeof setSelectedTemplate;
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
      }
    }
  };
  rawFile.send(null);
  return allText;
}

class TemplateSelectorModal extends Component<AllProps> {
  render() {
    const onSelected = (path: string, xslt: string) => {
      var htmlPath = path + 'default.html';
      var text = readTextFile(htmlPath);
      var replacedText = text;
      console.log('replacedText', replacedText);

      var xsltPath = xslt + 'default.xslt';
      var textXslt = readTextFile(xsltPath);
      var replacedXslt = textXslt;
      console.log('replacedXslt', replacedXslt);

      this.props.setSelectedTemplate(text, textXslt);
    };

    return (
      <Modal
        title="Tema Seçimi"
        onCancel={() => {
          this.props.close();
        }}
        width={700}
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

          <Row gutter={16} style={{ marginBottom: 20 }}>
            <List
              grid={{ gutter: 16, column: 2 }}
              dataSource={list}
              renderItem={item => (
                <List.Item>
                  <ThemeCard
                    type={item.type}
                    image={item.path + 'default.jpg'}
                    title={item.title}
                    description={item.description}
                    onClick={() => onSelected(item.path, item.xslt)}
                  />
                </List.Item>
              )}
            />
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
  setSelectedTemplate: (params: string, xslt: string) => dispatch(setSelectedTemplate(params, xslt))
});

export default connect(mapStateToProps, mapDispatchToProps)(TemplateSelectorModal);
