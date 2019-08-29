import { Button, Icon, Layout, Menu } from 'antd';
import React from 'react';
import { connect } from 'react-redux';
import { modalCompanyInfo, updateCompanyInfo } from './actions/companyInfoAction';
import './App.css';
import CompanyInfo from './components/Modals/CompanyInfo';

const { Header, Content, Footer, Sider } = Layout;
const { SubMenu } = Menu;

class App extends React.Component {
  componentDidMount() {
    this.props.updateCompanyInfo({
      companyInfo: {
        name: 'AAAAA',
        registerNumber: '',
        address: '',
        city: '',
        district: ''
      }
    });
  }
  render() {
    return (
      <Layout>
        <CompanyInfo
          modalVisible={this.props.modalVisible}
          //TODO: Close işlemi yapılmyor kontrol edilecek
          onOk={() => this.props.modalCompanyInfo({ modalVisible: false })}
          onCancel={() => this.props.modalCompanyInfo({ modalVisible: false })}
        />
        <Sider
          width={450}
          style={{
            overflow: 'auto',
            height: '100vh',
            position: 'fixed',
            left: 0
          }}
        >
          <div className="App-logo">
            <img src="https://nesbilgi.com.tr/wp-content/uploads/2018/03/nes-beyaz-logo.svg" alt="invoice builder" />
          </div>
          <Menu style={{ width: 450 }} mode="vertical">
            <SubMenu
              key="sub1"
              onTitleClick={() => this.props.modalCompanyInfo({ modalVisible: true })}
              title={
                <span style={{ fontSize: 15 }}>
                  <Icon style={{ fontSize: 15 }} type="mail" />
                  <span>Firma Bilgileri</span>
                </span>
              }
            />
            <SubMenu
              key="sub2"
              title={
                <span style={{ fontSize: 15 }}>
                  <Icon style={{ fontSize: 15 }} type="mail" />
                  <span>Logo ve İmza</span>
                </span>
              }
            />
            <SubMenu
              key="sub3"
              title={
                <span style={{ fontSize: 15 }}>
                  <Icon style={{ fontSize: 15 }} type="mail" />
                  <span>Banka Bilgileri</span>
                </span>
              }
            />
            <SubMenu
              key="sub4"
              title={
                <span style={{ fontSize: 15 }}>
                  <Icon style={{ fontSize: 15 }} type="mail" />
                  <span>Doküman Notları</span>
                </span>
              }
            />
            <SubMenu
              key="sub5"
              title={
                <span style={{ fontSize: 15 }}>
                  <Icon style={{ fontSize: 15 }} type="mail" />
                  <span>Tema Seçimi</span>
                </span>
              }
            />
          </Menu>
        </Sider>
        <Layout style={{ marginLeft: 450, minHeight: '100vh' }}>
          <Header style={{ margin: '12px 16px 0', background: '#fff' }}>
            <div style={{ float: 'right' }}>
              <Button.Group>
                <Button type="warrning" icon="cloud">
                  YENILE
                </Button>
                <Button type="dashed" icon="cloud-download">
                  Kaydet
                </Button>
              </Button.Group>
            </div>
          </Header>
          <Content style={{ margin: '24px 16px 0' }}>
            <div style={{ padding: 24, background: '#fff' }}>.HTML CONTENT</div>
          </Content>
          <Footer style={{ textAlign: 'center' }}>Ant Design ©2018 Created by Ant UED</Footer>
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
