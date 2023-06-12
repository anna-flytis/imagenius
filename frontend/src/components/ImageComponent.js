import React, { useState, useEffect } from 'react';

const ImageComponent = () => {
  const [images, setImages] = useState([]);

  // Fetch Image data from the server
  useEffect(() => {
    fetch('/api/images')
      .then(response => response.json())
      .then(data => setImages(data))
      .catch(error => console.error('Error fetching Image data:', error));
  }, []);

  // Render the Image data
  return (
    <div>
      <h2>Image List</h2>
      <ul>
        {images.map(image => (
          <li key={image.image_id}>
            <img src={image.image_url} alt={image.parameters} />
          </li>
        ))}
      </ul>
    </div>
  );
}

export default ImageComponent;
