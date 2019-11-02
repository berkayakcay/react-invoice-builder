import React from "react";
import { connect } from "react-redux";
import { Skeleton } from "antd";
import { settings } from "cluster";
import { replaceWithMeasure } from "rc-mentions/lib/util";

interface IProps {
  html: string;
  state: any;
}

interface IState {
  isLoading: boolean;
  replacedHtml: string;
}

type AllProps = IProps;

class HtmlContent extends React.Component<AllProps> {
  state: IState = {
    isLoading: true,
    replacedHtml: ""
  };

  componentWillReceiveProps() {
    this.replaceWithParameters(this.props.html);
  }
  replaceWithParameters = (text: string) => {
    // REPLACE işlemleri gerçekleştilecek
    text = text.replace(
      /{{COMPANYINFO.NAME}}/gim,
      this.props.state.companyInfo.info.name
    );
    text = text.replace(
      /{{COMPANYINFO.ADDRESS}}/gim,
      this.props.state.companyInfo.info.address
    );
    text = text.replace(
      /{{COMPANYINFO.CITY}}/gim,
      this.props.state.companyInfo.info.city
    );
    text = text.replace(
      /{{COMPANYINFO.COUNTRY}}/gim,
      this.props.state.companyInfo.info.country
    );

    this.setState({ isLoading: false, replacedHtml: text });
  };

  render() {
    return (
      <Skeleton avatar loading={this.state.isLoading} paragraph={{ rows: 40 }}>
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
