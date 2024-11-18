import SwiftUI

struct BottomControlsView: View {
    @ObservedObject var playerManager: PlayerManager

    var body: some View {
        VStack() {
            HStack {
                //PlaybackTimeView(playerManager: playerManager)
                AudioAndSubtitlesMenu()
                Spacer()
                if playerManager.selectedPlayerType == .avPlayer {
                    PiPButton()
                }
                RotateButtonView()
            }

            PlaybackSliderView(playerManager: playerManager)
        }
    }
}
