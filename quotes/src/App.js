import React, { useState, useEffect } from 'react';
import Quote from './Quote';
import axios from 'axios';

function App() {
  const getRandomInt = (min, max) => {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
  };

  const [results, setQuotes] = useState([]);
  useEffect(() => {
    axios.get('http://localhost:3001/quotes')
      .then(res => {
        setQuotes(res.data);
      });
  }, []);
  console.log(results);

  const allQuotes = results.map(result => {
    return <Quote id={result.id} quote={result.quote} author={result.author} />
  });

  const quote = allQuotes[getRandomInt(0, allQuotes.length - 1)];

  return (
    <div className="App">
      <header className="App-header">
        {quote}
      </header>
    </div>
  );
}

export default App;
