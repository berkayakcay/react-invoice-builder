import { faGlobe } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { Input, Select } from 'antd';
import React, { Component } from 'react';

const { Option } = Select;

const selectBefore = (
  <Select defaultValue="Http://" style={{ width: 90 }}>
    <Option value="Http://">Http://</Option>
    <Option value="Https://">Https://</Option>
  </Select>
);
const selectAfter = (
  <Select defaultValue=".gov" style={{ width: 80 }}>
    <Option value=".gov">.gov</Option>
    <Option value=".com">.com</Option>
    <Option value=".org">.org</Option>
    <Option value=".edu">.edu</Option>
    <Option value=".mil">.mil</Option>
    <Option value=".net">.net</Option>
    <Option value=".ac">.ac</Option>
    <Option value=".int">.int</Option>
    <Option value=".edu">.edu</Option>
  </Select>
);

export default class InternetAddress extends Component {
  render() {
    return (
      <Input
        addonBefore={selectBefore}
        addonAfter={selectAfter}
        prefix={<FontAwesomeIcon style={{ color: '#ced4da' }} icon={faGlobe} />}
        placeholder="İnternet Sitesi"
      />
    );
  }
}
