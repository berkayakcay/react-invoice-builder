import { Button, Layout, Menu, Icon } from "antd";
import React from "react";
import { connect } from "react-redux";
import {
  modalCompanyInfo,
  updateCompanyInfo
} from "./components/CompanyInfo/actions";
import "./App.scss";

class App extends React.Component {
  render() {
    return (
      <Layout >
        
        <Layout.Sider style={{ background: "#fff", flex: 1 }}>
          <Layout.Header style={{ background: "#fff" }}>
            <h1>BUILDER</h1>
          </Layout.Header>
          <Menu>
            <Menu.Item key="1">
              <Icon type="mail" />
              Firma Bilgileri
            </Menu.Item>
            <Menu.Item key="2">
              <Icon type="mail" />
              Banka Bilgileri
            </Menu.Item>
            <Menu.Item key="3">
              <Icon type="mail" />
              Doküman Notları
            </Menu.Item>
            <Menu.Item key="4">
              <Icon type="mail" />
              Logo ve İmza
            </Menu.Item>
            <Menu.Item key="5">
              <Icon type="mail" />
              Tema Seçimi
            </Menu.Item>
          </Menu>
        </Layout.Sider>
        <Layout>
          <Layout.Header style={{ margin: 12, padding: 6, background: "#fff" }}>
            <div style={{ float: "right" }}>
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
          <Layout.Content
            style={{ margin: 12, padding: 6, background: "#fff" }}
          >
            .HTML CONTENT
          </Layout.Content>
        </Layout>
      </Layout>

    );
  }
}

const mapStateToProps = state => {
  return {
    modalVisible: state.companyInfo.modalVisible,
    companyInfo: state.companyInfo.companyInfo
  };
};

const mapDispatchToProps = {
  updateCompanyInfo,
  modalCompanyInfo
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(App);
