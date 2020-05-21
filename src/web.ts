import { WebPlugin } from '@capacitor/core';
import { FlashlightPluginPlugin } from './definitions';

export class FlashlightPluginWeb extends WebPlugin implements FlashlightPluginPlugin {
  constructor() {
    super({
      name: 'FlashlightPlugin',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const FlashlightPlugin = new FlashlightPluginWeb();

export { FlashlightPlugin };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(FlashlightPlugin);
