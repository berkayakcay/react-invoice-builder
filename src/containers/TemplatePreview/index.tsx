import { Alert, Button, Skeleton } from 'antd';
import React from 'react';
import { connect } from 'react-redux';
import { Extention, Product } from '../../common/enums';
import { CommonModel, TemplateModel } from '../../common/models';
import DownloadTemplate from './Components/Download';
import ReplaceWithParameter from './Components/ReplaceWithParameter';

interface IProps {
  template: TemplateModel;
  state: CommonModel;
}

interface IState {
  isLoading: boolean;
  replaced: TemplateModel;
}

type AllProps = IProps;

class HtmlContent extends React.Component<AllProps> {
  state: IState = {
    isLoading: true,
    replaced: {
      HtmlTemplate: '',
      EinvoiceTemplate: '',
      EarchiveTemplate: ''
    }
  };

  componentWillReceiveProps() {
    const html = ReplaceWithParameter({ text: this.props.template.HtmlTemplate, state: this.props.state });
    const eInvoice = ReplaceWithParameter({ text: this.props.template.EinvoiceTemplate, state: this.props.state });
    const eArchive = ReplaceWithParameter({ text: this.props.template.EarchiveTemplate, state: this.props.state });
    this.setState({ replaced: { HtmlTemplate: html, EinvoiceTemplate: eInvoice, EarchiveTemplate: eArchive } });
  }

  componentWillMount() {
    setTimeout(() => {
      this.setState({ isLoading: false });
    }, 500);
  }

  SelectedProduct({ state }) {
    switch (state) {
      case Product.EINVOICE:
        return (
          <>
            {this.props.state.logoAndSignature.signatureBase64 === undefined && (
              <tr>
                <td colSpan={2} style={{ paddingBottom: 10 }}>
                  <Alert
                    message="Uyarı"
                    description="E-Faturalarda İmza Bulunmaz Görsel Örnektir. E-Arşiv İndirebilmeniz için imza yüklemek zorunludur!"
                    type="warning"
                    showIcon
                  />
                </td>
              </tr>
            )}
            <tr>
              <td style={{ width: 125 }}>
                <DownloadTemplate
                  file={Product.EINVOICE + Extention.XSLT}
                  content={this.state.replaced.EinvoiceTemplate}
                >
                  <Button type="primary">E-Fatura İndir</Button>
                </DownloadTemplate>
              </td>
              <td>
                <DownloadTemplate
                  file={Product.EARCHIVE + Extention.XSLT}
                  content={this.state.replaced.EarchiveTemplate}
                >
                  <Button
                    disabled={this.props.state.logoAndSignature.signatureBase64 === undefined ? true : false}
                    type="primary"
                  >
                    E-Arşiv İndir
                  </Button>
                </DownloadTemplate>
              </td>
            </tr>
          </>
        );
      case Product.ESMM:
        return (
          <>
            {this.props.state.logoAndSignature.signatureBase64 === undefined && (
              <tr>
                <td colSpan={2} style={{ paddingBottom: 10 }}>
                  <Alert
                    message="Uyarı"
                    description="Elektronik Serbest Meslek Makbuzu İndirebilmeniz için imza yüklemek zorunludur!"
                    type="warning"
                    showIcon
                  />
                </td>
              </tr>
            )}
            <tr>
              <td>
                <DownloadTemplate file={Product.ESMM + Extention.XSLT} content={this.state.replaced.EarchiveTemplate}>
                  <Button
                    disabled={this.props.state.logoAndSignature.signatureBase64 === undefined ? true : false}
                    type="primary"
                  >
                    E-SMM İndir
                  </Button>
                </DownloadTemplate>
              </td>
            </tr>
          </>
        );
      default:
        return null;
    }
  }

  render() {
    return this.state.replaced.HtmlTemplate === '' ? (
      <Alert message="Uyarı!" description="Lütfen Soldaki Menü'den Tema Seçimi Yapınız.." type="warning" />
    ) : (
      <Skeleton avatar loading={this.state.isLoading} paragraph={{ rows: 40 }}>
        <table style={{ marginBottom: 15, width: 800 }}>
          <tbody>{this.SelectedProduct({ state: this.props.state.htmlPreview.selectedProduct.Product })}</tbody>
        </table>
        <iframe
          title={Date.now.toString()}
          frameBorder={0}
          style={{ minHeight: 800 }}
          width="100%"
          height="100%"
          scrolling="yes"
          seamless
          srcDoc={this.state.replaced.HtmlTemplate}
        />
      </Skeleton>
    );
  }
}

const mapStateToProps = state => ({
  state: state
});

export default connect(mapStateToProps)(HtmlContent);
