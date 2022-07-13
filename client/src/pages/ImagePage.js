import React from 'react'
import { AspectRatio } from '@mantine/core';

function ImagePage() {
  return (
    <AspectRatio ratio={16 / 9}>
      <iframe
        src="https://giphy.com/gifs/tvland-phone-eye-roll-reaction-gif-JyYF31EbgzFGE/fullscreen"
        title="YouTube video player"
        frameBorder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowFullScreen
      />
    </AspectRatio>
  )
}

export default ImagePage