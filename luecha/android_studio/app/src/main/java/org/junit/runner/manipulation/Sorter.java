package org.junit.runner.manipulation;

import java.util.Comparator;
import org.junit.runner.Description;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class Sorter implements Comparator<Description> {
    public static final Sorter NULL = new Sorter(new Comparator<Description>() { // from class: org.junit.runner.manipulation.Sorter.1
        public int compare(Description description, Description description2) {
            return 0;
        }
    });
    private final Comparator<Description> comparator;

    public Sorter(Comparator<Description> comparator) {
        this.comparator = comparator;
    }

    public void apply(Object obj) {
        if (obj instanceof Sortable) {
            ((Sortable) obj).sort(this);
        }
    }

    public int compare(Description description, Description description2) {
        return this.comparator.compare(description, description2);
    }
}
