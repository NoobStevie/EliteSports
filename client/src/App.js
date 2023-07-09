import React, { useState, useEffect } from 'react';

function App() {
  const [data, setData] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch('https://www.thesportsdb.com/api/v1/json/3/all_leagues.php');
        const json = await response.json();
        setData(json.leagues);
      } catch (error) {
        console.log('Error fetching data:', error);
      }
    };
    fetchData();
  }, []);

  return(
    <div>
      <h1>League</h1>
      {data.map((league) => (
        <div key={league.idLeague}>
          <p>{league.strLeague}</p>
        </div>
      ))}
    </div>
  )
  
}

export default App;
