import React from 'react'
import { createRoot } from 'react-dom/client'

import './tailwind.css'
import './style.css'
import './script.js'

import VoterRoadmap from './VoterRoadmap.jsx'

const mount = document.getElementById('voter-roadmap-root')

if (mount) {
  createRoot(mount).render(
    <React.StrictMode>
      <VoterRoadmap />
    </React.StrictMode>
  )
}

