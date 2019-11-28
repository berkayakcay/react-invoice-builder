import { faFileAlt, faFileInvoice } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Button, Col, List, Modal, Row, Tabs } from 'antd';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { EINVOICE, ESMM } from '../../../../common/constants';
import { ProductSetModel, TemplateModel } from '../../../../common/models.js';
import ESMMList from '../../../../ESMMList.json';
import list from '../../../../list.json';
import { setSelectedProduct, setSelectedTemplate } from '../../actions';
import ThemeCard from '../Cards/ThemeCard';

interface IProps {
  open: boolean;
  close: () => void;
}

interface IPropsFromDispatch {
  setSelectedTemplate: typeof setSelectedTemplate;
  setSelectedProduct: typeof setSelectedProduct;
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

const { TabPane } = Tabs;
class TemplateSelectorModal extends Component<AllProps> {
  render() {
    const onSelected = (path: string) => {
      var htmlPath = path + 'default.html';
      var textHtml = readTextFile(htmlPath);

      var xsltEinvoicePath = path + 'einvoice.xslt';
      var textXsltEinvoice = readTextFile(xsltEinvoicePath);

      var xsltEarchivePath = path + 'earchive.xslt';
      var textXsltEarchive = readTextFile(xsltEarchivePath);

      this.props.setSelectedTemplate({
        HtmlTemplate: textHtml,
        EinvoiceTemplate: textXsltEinvoice,
        EarchiveTemplate: textXsltEarchive
      });

      this.props.setSelectedProduct({ Product: EINVOICE });
    };

    const onSelectedEsmm = (path: string) => {
      var htmlPath = path + 'default.html';
      var textHtml = readTextFile(htmlPath);

      var xsltEsmmPath = path + 'default.xslt';
      var textXsltEsmm = readTextFile(xsltEsmmPath);

      this.props.setSelectedTemplate({
        HtmlTemplate: textHtml,
        EinvoiceTemplate: '',
        EarchiveTemplate: textXsltEsmm
      });

      this.props.setSelectedProduct({ Product: ESMM });
    };

    return (
      <Modal
        title="Tema Seçmeden Önce Kullanacağınız Ürünü Seçiniz!"
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
        <Tabs defaultActiveKey="1">
          <TabPane
            tab={
              <span>
                <FontAwesomeIcon style={{ color: '#ced4da' }} icon={faFileInvoice} /> E-Fatura - E-Arşiv
              </span>
            }
            key="1"
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
                        onClick={() => onSelected(item.path)}
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
          </TabPane>
          <TabPane
            tab={
              <span>
                <FontAwesomeIcon style={{ color: '#ced4da' }} icon={faFileAlt} /> E-SMM
              </span>
            }
            key="2"
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
                  dataSource={ESMMList}
                  renderItem={item => (
                    <List.Item>
                      <ThemeCard
                        type={item.type}
                        image={item.path + 'default.jpg'}
                        title={item.title}
                        onClick={() => onSelectedEsmm(item.path)}
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
          </TabPane>
        </Tabs>
      </Modal>
    );
  }
}

const mapStateToProps = () => ({});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  setSelectedTemplate: (params: TemplateModel) => dispatch(setSelectedTemplate(params)),
  setSelectedProduct: (params: ProductSetModel) => dispatch(setSelectedProduct(params))
});

export default connect(mapStateToProps, mapDispatchToProps)(TemplateSelectorModal);
