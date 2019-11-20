import { Button, Icon, Layout, Menu, Typography } from 'antd';
import React from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import './App.scss';
import { showBankInfoModal } from './containers/BankInfo/actions';
import { showCompanyInfoModal } from './containers/CompanyInfo/actions';
import { showDocumentNotesModal } from './containers/DocumentNotes/actions';
import { showLogoAndSignatureModal } from './containers/LogoAndSignature/actions';
import HtmlContent from './containers/TemplatePreview';
import { showTemplateSelectorModal } from './containers/TemplateSelector/actions';
import { TemplateSelectorStateType } from './containers/TemplateSelector/types';

interface IProps {
  showCompanyInfoModal: typeof showCompanyInfoModal;
  showBankInfoModal: typeof showBankInfoModal;
  showDocumentNotesModal: typeof showDocumentNotesModal;
  showLogoAndSignatureModal: typeof showLogoAndSignatureModal;
  showHtmlPreviewModal: typeof showTemplateSelectorModal;
  selectedHtml: string;
  selectedXslt: string;
}

class App extends React.Component<IProps> {
  render() {
    return (
      <Layout>
        <Layout.Sider style={{ background: '#fff' }} width={250}>
          <Typography.Title level={4}></Typography.Title>
          <Menu>
            <Menu.Item key="0">NES Bilgi Fatura Tasarımı</Menu.Item>
            <Menu.Item key="1" onClick={() => this.props.showCompanyInfoModal()}>
              <Icon type="right" />
              Firma Bilgileri
            </Menu.Item>

            <Menu.Item key="2" onClick={() => this.props.showBankInfoModal()}>
              <Icon type="right" />
              Banka Bilgileri
            </Menu.Item>
            <Menu.Item key="3" onClick={() => this.props.showDocumentNotesModal()}>
              <Icon type="right" />
              Doküman Notları
            </Menu.Item>
            <Menu.Item key="4" onClick={() => this.props.showLogoAndSignatureModal()}>
              <Icon type="right" />
              Logo ve İmza
            </Menu.Item>
            <Menu.Item key="5" onClick={() => this.props.showHtmlPreviewModal()}>
              <Icon type="right" />
              Tema Seçimi
            </Menu.Item>
          </Menu>
        </Layout.Sider>
        <Layout>
          <Layout.Header style={{ margin: 12, background: '#fff' }}>
            <div style={{ float: 'right' }}>
              <Button.Group>
                <Button type="danger" icon="cloud">
                  YENILE
                </Button>
                <Button type="dashed" icon="cloud-download">
                  Kaydet
                </Button>
              </Button.Group>
            </div>
          </Layout.Header>
          <Layout.Content style={{ margin: 12, padding: 12, background: '#fff' }}>
            <HtmlContent html={this.props.selectedHtml} xslt={this.props.selectedXslt} />
          </Layout.Content>
        </Layout>
      </Layout>
    );
  }
}

const mapStateToProps = ({ htmlPreview }: TemplateSelectorStateType) => ({
  selectedHtml: htmlPreview.selectedHtml.Template,
  selectedXslt: htmlPreview.selectedXslt.Template
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  showCompanyInfoModal: () => dispatch(showCompanyInfoModal()),
  showBankInfoModal: () => dispatch(showBankInfoModal()),
  showDocumentNotesModal: () => dispatch(showDocumentNotesModal()),
  showLogoAndSignatureModal: () => dispatch(showLogoAndSignatureModal()),
  showHtmlPreviewModal: () => dispatch(showTemplateSelectorModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(App);
