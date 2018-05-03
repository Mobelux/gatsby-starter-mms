import 'babel-polyfill';
import React from 'react';
import PropTypes from 'prop-types';
import Helmet from 'react-helmet';
import Announcement from '../components/Announcement';
import '../styles/main.scss';

class TemplateWrapper extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const {
      children,
    } = this.props;

    return (
      <div>
      Index
        {children()}
      </div>
    );
  }
}

export default TemplateWrapper;

TemplateWrapper.propTypes = {
  children: PropTypes.any
};