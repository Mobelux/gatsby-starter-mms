import React from 'react';

const Announcement = ({ children, className }) => (
  <div className={`announcement ${className}`.trim()}>
    <span className="announcement__text">Hello</span>
  </div>
);

export default Announcement;
