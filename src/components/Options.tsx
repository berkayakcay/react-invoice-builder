import { Select } from 'antd';
import React from 'react';

const { Option } = Select;

export const selectBefore = (
  <Select defaultValue="Http://" style={{ width: 90 }}>
    <Option value="Http://">Http://</Option>
    <Option value="Https://">Https://</Option>
  </Select>
);

export const selectAfter = (
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
