import React from 'react';

const Announcement = ({ children, className }) => (
  <div className={`announcement ${className}`.trim()}>
    <span className="announcement__text">{children}</span>
  </div>
);

export default Announcement;
