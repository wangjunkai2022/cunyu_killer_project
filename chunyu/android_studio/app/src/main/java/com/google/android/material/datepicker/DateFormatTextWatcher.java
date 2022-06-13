package com.google.android.material.datepicker;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class DateFormatTextWatcher implements TextWatcher {
    private final CalendarConstraints constraints;
    private final DateFormat dateFormat;
    private final String formatHint;
    private final String outOfRange;
    private final TextInputLayout textInputLayout;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    void onInvalidDate() {
    }

    abstract void onValidDate(Long l);

    public DateFormatTextWatcher(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.formatHint = str;
        this.dateFormat = dateFormat;
        this.textInputLayout = textInputLayout;
        this.constraints = calendarConstraints;
        this.outOfRange = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v4, types: [com.google.android.material.textfield.TextInputLayout] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.text.TextWatcher
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void onTextChanged(java.lang.CharSequence r6, int r7, int r8, int r9) {
        /*
            r5 = this;
            boolean r7 = android.text.TextUtils.isEmpty(r6)
            r8 = 0
            if (r7 == 0) goto L_0x0010
            com.google.android.material.textfield.TextInputLayout r6 = r5.textInputLayout
            r6.setError(r8)
            r5.onValidDate(r8)
            return
        L_0x0010:
            r7 = 0
            r9 = 1
            java.text.DateFormat r0 = r5.dateFormat     // Catch: ParseException -> 0x005d
            java.lang.String r6 = r6.toString()     // Catch: ParseException -> 0x005d
            java.util.Date r6 = r0.parse(r6)     // Catch: ParseException -> 0x005d
            com.google.android.material.textfield.TextInputLayout r0 = r5.textInputLayout     // Catch: ParseException -> 0x005d
            r0.setError(r8)     // Catch: ParseException -> 0x005d
            long r0 = r6.getTime()     // Catch: ParseException -> 0x005d
            com.google.android.material.datepicker.CalendarConstraints r8 = r5.constraints     // Catch: ParseException -> 0x005d
            com.google.android.material.datepicker.CalendarConstraints$DateValidator r8 = r8.getDateValidator()     // Catch: ParseException -> 0x005d
            boolean r8 = r8.isValid(r0)     // Catch: ParseException -> 0x005d
            if (r8 == 0) goto L_0x0046
            com.google.android.material.datepicker.CalendarConstraints r8 = r5.constraints     // Catch: ParseException -> 0x005d
            boolean r8 = r8.isWithinBounds(r0)     // Catch: ParseException -> 0x005d
            if (r8 == 0) goto L_0x0046
            long r0 = r6.getTime()     // Catch: ParseException -> 0x005d
            java.lang.Long r6 = java.lang.Long.valueOf(r0)     // Catch: ParseException -> 0x005d
            r5.onValidDate(r6)     // Catch: ParseException -> 0x005d
            goto L_0x00c8
        L_0x0046:
            com.google.android.material.textfield.TextInputLayout r6 = r5.textInputLayout     // Catch: ParseException -> 0x005d
            java.lang.String r8 = r5.outOfRange     // Catch: ParseException -> 0x005d
            java.lang.Object[] r2 = new java.lang.Object[r9]     // Catch: ParseException -> 0x005d
            java.lang.String r0 = com.google.android.material.datepicker.DateStrings.getDateString(r0)     // Catch: ParseException -> 0x005d
            r2[r7] = r0     // Catch: ParseException -> 0x005d
            java.lang.String r8 = java.lang.String.format(r8, r2)     // Catch: ParseException -> 0x005d
            r6.setError(r8)     // Catch: ParseException -> 0x005d
            r5.onInvalidDate()     // Catch: ParseException -> 0x005d
            goto L_0x00c8
        L_0x005d:
            com.google.android.material.textfield.TextInputLayout r6 = r5.textInputLayout
            android.content.Context r6 = r6.getContext()
            int r8 = com.google.android.material.R.string.mtrl_picker_invalid_format
            java.lang.String r6 = r6.getString(r8)
            com.google.android.material.textfield.TextInputLayout r8 = r5.textInputLayout
            android.content.Context r8 = r8.getContext()
            int r0 = com.google.android.material.R.string.mtrl_picker_invalid_format_use
            java.lang.String r8 = r8.getString(r0)
            java.lang.Object[] r0 = new java.lang.Object[r9]
            java.lang.String r1 = r5.formatHint
            r0[r7] = r1
            java.lang.String r8 = java.lang.String.format(r8, r0)
            com.google.android.material.textfield.TextInputLayout r0 = r5.textInputLayout
            android.content.Context r0 = r0.getContext()
            int r1 = com.google.android.material.R.string.mtrl_picker_invalid_format_example
            java.lang.String r0 = r0.getString(r1)
            java.lang.Object[] r9 = new java.lang.Object[r9]
            java.text.DateFormat r1 = r5.dateFormat
            java.util.Date r2 = new java.util.Date
            java.util.Calendar r3 = com.google.android.material.datepicker.UtcDates.getTodayCalendar()
            long r3 = r3.getTimeInMillis()
            r2.<init>(r3)
            java.lang.String r1 = r1.format(r2)
            r9[r7] = r1
            java.lang.String r7 = java.lang.String.format(r0, r9)
            com.google.android.material.textfield.TextInputLayout r9 = r5.textInputLayout
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r6)
            java.lang.String r6 = "\n"
            r0.append(r6)
            r0.append(r8)
            r0.append(r6)
            r0.append(r7)
            java.lang.String r6 = r0.toString()
            r9.setError(r6)
            r5.onInvalidDate()
        L_0x00c8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.DateFormatTextWatcher.onTextChanged(java.lang.CharSequence, int, int, int):void");
    }
}
