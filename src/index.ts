import { NativeModules, Platform } from "react-native";

type Cursor =
  | "arrow"
  | "iBeam"
  | "crosshair"
  | "closedHand"
  | "openHand"
  | "pointingHand"
  | "resizeLeft"
  | "resizeRight"
  | "resizeLeftRight"
  | "resizeUp"
  | "resizeDown"
  | "resizeUpDown"
  | "disappearingItem"
  | "iBeamCursorForVerticalLayout"
  | "operationNotAllowed"
  | "dragLink"
  | "dragCopy"
  | "contextualMenu";

export function setCursor(cursor: Cursor) {
  if (Platform.OS === "macos") {
    NativeModules.RNCursor.setCursor(cursor);
  }
}
