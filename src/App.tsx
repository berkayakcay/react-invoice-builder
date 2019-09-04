import { Button, Layout, Menu, Icon, Typography } from "antd";
import React from "react";
import { connect } from "react-redux";
import "./App.scss";
import MenuItemModalTrigger from "./components/Modal";
import WrappedCompanyForm from "./containers/CompanyInfo";

class App extends React.Component {
  render() {
    return (
      <Layout>
        <Layout.Sider style={{ background: "#fff" }} width={250}>
          <Typography.Title level={4}></Typography.Title>
          <Menu>
            <Menu.Item key="0">#DOCUMENT.BUILDER</Menu.Item>
            <Menu.Item key="1">
              <MenuItemModalTrigger text="Firma Bilgileri">
                <WrappedCompanyForm />
              </MenuItemModalTrigger>
            </Menu.Item>
            <Menu.Item key="2">
              <Icon type="right" />
              Banka Bilgileri
            </Menu.Item>
            <Menu.Item key="3">
              <Icon type="right" />
              Doküman Notları
            </Menu.Item>
            <Menu.Item key="4">
              <Icon type="right" />
              Logo ve İmza
            </Menu.Item>
            <Menu.Item key="5">
              <Icon type="right" />
              Tema Seçimi
            </Menu.Item>
          </Menu>
        </Layout.Sider>
        <Layout>
          <Layout.Header style={{ margin: 12, background: "#fff" }}>
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
            style={{ margin: 12, padding: 12, background: "#fff" }}
          >
            .HTML CONTENT
          </Layout.Content>
        </Layout>
      </Layout>
    );
  }
}

const mapStateToProps = state => {};

const mapDispatchToProps = {};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(App);
