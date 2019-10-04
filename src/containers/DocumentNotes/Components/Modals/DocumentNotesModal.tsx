import { Button, Form, Input, message, Modal } from 'antd';
import { FormComponentProps } from 'antd/lib/form';
import 'antd/lib/timeline/style/index.css';
import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Dispatch } from 'redux';
import { DocumentNotesModel } from '../../../../common/models';
import { addDocumentNotes } from '../../actions';
import { NotesStateType } from '../../types';

interface IProps {
  notes: DocumentNotesModel;
  open: boolean;
  close: () => void;
}

interface IPropsFromDispatch {
  addDocumentNotes: typeof addDocumentNotes;
}

type AllProps = IProps & IPropsFromDispatch & FormComponentProps;

const { TextArea } = Input;

class DocumentNotesModal extends Component<AllProps> {
  addDocumentNotes = () => {
    this.props.form.validateFields((errors: any, values: DocumentNotesModel) => {
      if (errors === null) {
        this.props.addDocumentNotes(values);
        message.success('Notlar Başarı İle Eklendi!', 2);
        this.props.close();
      }
    });
  };

  render() {
    const { getFieldDecorator } = this.props.form;
    return (
      <Modal
        title="Döküman Notları"
        onCancel={() => this.props.close()}
        width={1024}
        visible={this.props.open}
        footer={[
          <>
            <Button key="kaydet" type="primary" icon="check" onClick={() => this.addDocumentNotes()}>
              KAYDET
            </Button>
            <Button key="kapat" type="danger" icon="close" onClick={() => this.props.close()}>
              KAPAT
            </Button>
          </>
        ]}
      >
        <Form>
          <Form.Item hasFeedback label="1.Not Alanı">
            {getFieldDecorator('firstNote', {
              initialValue: this.props.notes.firstNote,
              rules: [{ required: false }]
            })(<TextArea placeholder="İlk Notunuzu Buraya Yazabilirsiniz" style={{ height: 50 }} />)}
          </Form.Item>
          <Form.Item hasFeedback label="2.Not Alanı">
            {getFieldDecorator('secondNote', {
              initialValue: this.props.notes.secondNote,
              rules: [{ required: false }]
            })(
              <TextArea placeholder="İkinci Notunuzu Buraya Yazabilirsiniz" className="custom" style={{ height: 50 }} />
            )}
          </Form.Item>
          <Form.Item hasFeedback label="3.Not Alanı">
            {getFieldDecorator('thirdNote', {
              initialValue: this.props.notes.thirdNote,
              rules: [{ required: false }]
            })(
              <TextArea placeholder="Üçüncü Notunuzu Buraya Yazabilirsiniz" className="custom" style={{ height: 50 }} />
            )}
          </Form.Item>
        </Form>
      </Modal>
    );
  }
}

const WrappedForm = Form.create<AllProps>()(DocumentNotesModal);

const mapStateToProps = ({ documentNotes }: NotesStateType) => ({
  notes: documentNotes.notes
});

const mapDispatchToProps = (dispatch: Dispatch) => ({
  addDocumentNotes: (params: DocumentNotesModel) => dispatch(addDocumentNotes(params))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(WrappedForm);
