import React, { useState, useEffect } from 'react'

function App() {
    const [message, setMessage] = useState('Loading...')

    useEffect(() => {
        fetch('/api/hello')
            .then(response => response.json())
            .then(data => setMessage(data.message))
            .catch(error => setMessage('Error: ' + error.message))
    }, [])

    return (
        <div className="App">
            <p>This message is coming from the React frontend</p>
            <p>{message}</p>
        </div>
    )
}

export default App
