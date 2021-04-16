import { NativeModules, Platform } from "react-native";
export function setCursor(cursor) {
    if (Platform.OS === "macos") {
        NativeModules.RNCursor.setCursor(cursor);
    }
}
