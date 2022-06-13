.class public Lcom/tencent/liteav/a;
.super Ljava/lang/Object;
.source "StatusConverter.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getStatus(I)Lcom/tencent/liteav/basic/module/StatusBucket;

    move-result-object v0

    const-string v1, "18446744073709551615"

    const/16 v2, 0x2711

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x36b3

    .line 13
    invoke-static {p0, v3, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v2, 0x2712

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1f45

    .line 16
    invoke-static {p0, v3, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v2, 0x2710

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x36c1

    .line 19
    invoke-static {p0, v3, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v2, 0x2713

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x36b2

    .line 22
    invoke-static {p0, v3, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v2, 0x2714

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x36b6

    .line 25
    invoke-static {p0, v3, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v2, 0x2715

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x36c2

    .line 28
    invoke-static {p0, v3, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v2, 0x2716

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x466d

    .line 31
    invoke-static {p0, v2, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x2782

    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x2783

    .line 41
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x466f

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 43
    invoke-static {p1, v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v3, 0x4670

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 45
    invoke-static {p1, v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 47
    div-int/2addr v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    const/16 v4, 0x7d1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 49
    invoke-static {p1, v4, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7d2

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 51
    invoke-static {p1, v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7d5

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 53
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7d4

    const/16 v2, 0x283c

    .line 56
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 55
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7f2

    const/16 v2, 0x283d

    .line 59
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7f3

    const/16 v2, 0x283e

    .line 62
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 61
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7de

    const/16 v2, 0x283f

    .line 65
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 64
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7d8

    const/16 v2, 0x2780

    .line 68
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7da

    const/16 v2, 0x277a

    .line 71
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7d7

    const/16 v2, 0x2779

    .line 74
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7db

    const/16 v2, 0x277b

    .line 77
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 76
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4651

    const/16 v2, 0x2777

    .line 80
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4652

    const/16 v2, 0x2778

    .line 83
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4656

    const/16 v2, 0x27da

    .line 86
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 85
    invoke-static {p1, v1, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4657

    const/16 v4, 0x27db

    .line 89
    invoke-virtual {v0, p1, v4}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 88
    invoke-static {p1, v1, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4658

    const/16 v5, 0x27dc

    .line 92
    invoke-virtual {v0, p1, v5}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 91
    invoke-static {p1, v1, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x465f

    const/16 v5, 0x27dd

    .line 95
    invoke-virtual {v0, p1, v5}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 94
    invoke-static {p1, v1, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x465d

    const/16 v5, 0x27de

    .line 98
    invoke-virtual {v0, p1, v5}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 97
    invoke-static {p1, v1, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 100
    invoke-virtual {v0, p1, v4}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v1

    .line 102
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2

    mul-int/lit8 v1, v1, 0x64

    .line 104
    div-int v3, v1, v2

    :cond_2
    const/16 v1, 0x465e

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 106
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4667

    const/16 v2, 0x27d8

    .line 109
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 108
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7f4

    const/16 v2, 0x277e

    .line 112
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7f5

    const/16 v2, 0x277f

    .line 115
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 114
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x466c

    const/16 v2, 0x27d9

    .line 118
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 117
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x466e

    const/16 v2, 0x2781

    .line 121
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4653

    const/16 v2, 0x2774

    .line 124
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 123
    invoke-static {p1, v1, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7e3

    .line 127
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7e4

    const/16 v2, 0x2775

    .line 130
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 129
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4660

    const/16 v2, 0x2776

    .line 133
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x4659

    const/16 v2, 0x27df

    .line 136
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 135
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x465a

    const/16 v2, 0x27e0

    .line 139
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 138
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x465c

    const/16 v2, 0x27e1

    .line 142
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    const/16 v1, 0x7e5

    const/16 v2, 0x277d

    .line 145
    invoke-virtual {v0, p1, v2}, Lcom/tencent/liteav/basic/module/StatusBucket;->getIntStatus(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 144
    invoke-static {p1, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-void
.end method
