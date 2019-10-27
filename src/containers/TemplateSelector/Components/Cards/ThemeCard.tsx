import { Card } from "antd";
import Meta from "antd/lib/card/Meta";
import React, { PureComponent } from "react";

interface IProps {
  onClick: Function | any;
  type: string;
  image: string;
  title: string;
  description: string;
}

export default class ThemeCard extends PureComponent<IProps> {
  render() {
    return (
      <Card
        onClick={this.props.onClick}
        hoverable
        style={{ width: 320 }}
        cover={<img alt={this.props.title} src={this.props.image} />}
      >
        <Meta title={this.props.title} description={this.props.description} />
      </Card>
    );
  }
}
