import React, { PureComponent } from 'react';
import { connect } from 'react-redux';

interface IProps {
  html: string;
}

type AllProps = IProps;

class HtmlContent extends PureComponent<AllProps> {
  render() {
    return (
      <React.Fragment>
        <iframe
          title={Date.now.toString()}
          frameBorder={0}
          style={{ minHeight: 800 }}
          width="100%"
          height="100%"
          scrolling="yes"
          seamless
          srcDoc={this.props.html}
        />
      </React.Fragment>
    );
  }
}

export default connect()(HtmlContent);
