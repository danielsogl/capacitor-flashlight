// @ts-ignore
declare module "@capacitor/core" {
  interface PluginRegistry {
    FlashlightPlugin: FlashlightPlugin;
  }
}

export interface FlashlightPlugin {
  /**
   * Checks if flashlight is available
   * @returns  {Promise<{ value: boolean }>} true if flashlight is available and false if not
   */
  isAvailable(): Promise<{ value: boolean }>;

  /**
   * Turns the flashlight on
   * @returns {Promise<void>} an empty Promise
   * @param intensity The intensity of the light between 0.0 and 1.0
   */
  switchOn(intensity?: number): Promise<void>;

  /**
   * Turns the flashlight off
   * @rejects PluginResultError
   */
  switchOff(): Promise<void>;

  /**
   * Checks if the flashlight is turned on or off
   * @returns  {Promise<{ value: boolean }>} True of flaslight is turned on and false if not
   */
  isSwitchedOn(): Promise<{ value: boolean }>;
}
