module.exports = {
  config: {
    updateChannel: 'stable',

    fontSize: 16,
      
    fontFamily: '"MesloLGMDZ Nerd Font", monospace',

    foregroundColor: '#fff', 
    backgroundColor: '#000',
    borderColor: '#333',

    cursorShape: 'BEAM',
    cursorBlink: true,

    css: '',

    termCSS: '',

    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#FED766',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00C7FF',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#FED766',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00C7FF',
      lightWhite: '#ffffff'
    },
    
    shell: '/bin/zsh',

    shellArgs: ['--login'],

    env: {},

    copyOnSelect: false,

    quickEdit: false,

    scrollback: 10000,

    paneNavigation: {
      debug: false,
      hotkeys: {
        navigation: {
          up: 'ctrl+alt+k',
          down: 'ctrl+alt+j',
          left: 'ctrl+alt+h',
          right: 'ctrl+alt+l'
        },
        jump_prefix: 'ctrl+alt', 
        permutation_modifier: 'shift',
        maximize: 'meta+enter'
      },
      showIndicators: false, 
      indicatorPrefix: '^⌥',
      indicatorStyle: { 
        position: 'absolute',
        top: 0,
        left: 0,
        fontSize: '10px'
      },
      focusOnMouseHover: false,
      inactivePaneOpacity: 0.6 
    },

    showHamburgerMenu: '',

    howWindowControls: '',

    hyperMonokaiPro: {
        theme: "spectrum"
    },
  },

  plugins: [
      "hyperminimal", 
      "hyper-monokai-pro", 
      "hyper-search", 
      "hyper-pane", 
      "hypercwd", 
      "hyper-tab-icons"
  ],

  localPlugins: [],

  keymaps: {
  }
};
