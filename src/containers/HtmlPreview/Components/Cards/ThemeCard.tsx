import { Card } from 'antd';
import Meta from 'antd/lib/card/Meta';
import React, { PureComponent } from 'react';

interface IProps {
  selected: Function | any;
  theme: string;
  title: string;
  description: string;
  shadow: any;
}

export default class ThemeCard extends PureComponent<IProps> {
  render() {
    return (
      <Card
        onClick={this.props.selected}
        className="themeCard"
        hoverable
        style={{ boxShadow: this.props.shadow }}
        cover={<img alt="example" src={this.props.theme} />}
      >
        <Meta title={this.props.title} description={this.props.description} />
      </Card>
    );
  }
}
