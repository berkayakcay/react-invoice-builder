import { Alert, Button, Skeleton } from 'antd';
import React from 'react';
import { connect } from 'react-redux';
import ReplaceWithParameter from './Components/ReplaceWithParameter';
import Download from './DownloadTemplate/Download';

interface IProps {
  html: string;
  xsltEinvoice: string;
  xsltEarchive: string;
  state: any;
}

interface IState {
  isLoading: boolean;
  replacedHtml: string;
  replaceXsltEinvoice: string;
  replaceXsltEarchive: string;
}

type AllProps = IProps;

class HtmlContent extends React.Component<AllProps> {
  state: IState = {
    isLoading: true,
    replacedHtml: '',
    replaceXsltEinvoice: '',
    replaceXsltEarchive: ''
  };

  componentWillReceiveProps() {
    const html = ReplaceWithParameter({ text: this.props.html, state: this.props.state });
    const eInvoice = ReplaceWithParameter({ text: this.props.xsltEinvoice, state: this.props.state });
    const eArchive = ReplaceWithParameter({ text: this.props.xsltEarchive, state: this.props.state });
    this.setState({
      replacedHtml: html,
      replaceXsltEinvoice: eInvoice,
      replaceXsltEarchive: eArchive
    });
  }

  componentWillMount() {
    setTimeout(() => {
      this.setState({ isLoading: false });
    }, 500);
  }

  render() {
    return this.state.replacedHtml === '' ? (
      <Alert message="Uyarı!" description="Lütfen Soldaki Menü'den Tema Seçimi Yapınız.." type="error" closable />
    ) : (
      <Skeleton avatar loading={this.state.isLoading} paragraph={{ rows: 40 }}>
        <table>
          <tbody>
            <tr>
              <td>
                <Download file="einvoice.xslt" content={this.state.replaceXsltEinvoice}>
                  <Button type="primary">E-Fatura İndir</Button>
                </Download>
              </td>
              <td>
                <Download file="earchive.xslt" content={this.state.replaceXsltEarchive}>
                  <Button type="primary">E-Arşiv İndir</Button>
                </Download>
              </td>
            </tr>
          </tbody>
        </table>
        <iframe
          title={Date.now.toString()}
          frameBorder={0}
          style={{ minHeight: 800 }}
          width="100%"
          height="100%"
          scrolling="yes"
          seamless
          srcDoc={this.state.replacedHtml}
        />
      </Skeleton>
    );
  }
}

const mapStateToProps = state => ({
  state: state
});

export default connect(mapStateToProps)(HtmlContent);
