import React from 'react';

export default function Quote(props) {
  return (
    <div className="card">
      <h2 key="{props.id}" className="quote">{props.quote}</h2>
      <div className="author">--{props.author}</div>
    </div>
  )
}
