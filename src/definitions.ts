// @ts-ignore
declare module "@capacitor/core" {
  interface PluginRegistry {
    FlashlightPlugin: FlashlightPluginPlugin;
  }
}

export interface FlashlightPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
