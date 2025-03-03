package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes4.dex */
public interface AccessibilityViewCommand {
    boolean perform(View view, CommandArguments commandArguments);

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static abstract class CommandArguments {
        Bundle mBundle;

        public void setBundle(Bundle bundle) {
            this.mBundle = bundle;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static final class MoveAtGranularityArguments extends CommandArguments {
        public int getGranularity() {
            return this.mBundle.getInt("ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT");
        }

        public boolean getExtendSelection() {
            return this.mBundle.getBoolean("ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static final class MoveHtmlArguments extends CommandArguments {
        public String getHTMLElement() {
            return this.mBundle.getString("ACTION_ARGUMENT_HTML_ELEMENT_STRING");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static final class SetSelectionArguments extends CommandArguments {
        public int getStart() {
            return this.mBundle.getInt("ACTION_ARGUMENT_SELECTION_START_INT");
        }

        public int getEnd() {
            return this.mBundle.getInt("ACTION_ARGUMENT_SELECTION_END_INT");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static final class SetTextArguments extends CommandArguments {
        public CharSequence getText() {
            return this.mBundle.getCharSequence("ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static final class ScrollToPositionArguments extends CommandArguments {
        public int getRow() {
            return this.mBundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT");
        }

        public int getColumn() {
            return this.mBundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static final class SetProgressArguments extends CommandArguments {
        public float getProgress() {
            return this.mBundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes4.dex */
    public static final class MoveWindowArguments extends CommandArguments {
        public int getX() {
            return this.mBundle.getInt("ACTION_ARGUMENT_MOVE_WINDOW_X");
        }

        public int getY() {
            return this.mBundle.getInt("ACTION_ARGUMENT_MOVE_WINDOW_Y");
        }
    }
}
