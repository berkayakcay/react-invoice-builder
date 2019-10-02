import React from 'react';

interface IProps {
  img: any;
}

class ImgDialog extends React.Component<IProps> {
  render() {
    return (
      <div>
        <img
          style={{ minWidth: 200, minHeight: 200, maxWidth: 200, maxHeight: 200 }}
          src={this.props.img}
          alt="Cropped"
        />
      </div>
    );
  }
}

export default ImgDialog;
