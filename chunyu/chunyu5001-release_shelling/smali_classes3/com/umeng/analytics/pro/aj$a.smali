.class Lcom/umeng/analytics/pro/aj$a;
.super Lcom/umeng/analytics/pro/bz;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/analytics/pro/aj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 732
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/aj$1;)V
    .locals 0

    .line 732
    invoke-direct {p0}, Lcom/umeng/analytics/pro/aj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 737
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 739
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 740
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v1, :cond_3

    .line 829
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 833
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 837
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 841
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 845
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->G()V

    return-void

    .line 842
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    .line 838
    :cond_1
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    .line 834
    :cond_2
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    .line 743
    :cond_3
    iget-short v1, v0, Lcom/umeng/analytics/pro/bk;->c:S

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 825
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    .line 817
    :pswitch_0
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_4

    .line 818
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->j:I

    .line 819
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->j(Z)V

    goto/16 :goto_1

    .line 821
    :cond_4
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    .line 809
    :pswitch_1
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v3, :cond_5

    .line 810
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    .line 811
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->i(Z)V

    goto/16 :goto_1

    .line 813
    :cond_5
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    .line 801
    :pswitch_2
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v3, :cond_6

    .line 802
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    .line 803
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->h(Z)V

    goto/16 :goto_1

    .line 805
    :cond_6
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    .line 793
    :pswitch_3
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v3, :cond_7

    .line 794
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    .line 795
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->g(Z)V

    goto/16 :goto_1

    .line 797
    :cond_7
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto/16 :goto_1

    .line 785
    :pswitch_4
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_8

    .line 786
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->f:I

    .line 787
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->f(Z)V

    goto/16 :goto_1

    .line 789
    :cond_8
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 777
    :pswitch_5
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_9

    .line 778
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->e:I

    .line 779
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->e(Z)V

    goto :goto_1

    .line 781
    :cond_9
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 769
    :pswitch_6
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_a

    .line 770
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/pro/aj;->d:I

    .line 771
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->d(Z)V

    goto :goto_1

    .line 773
    :cond_a
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 761
    :pswitch_7
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v3, :cond_b

    .line 762
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    .line 763
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->c(Z)V

    goto :goto_1

    .line 765
    :cond_b
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 753
    :pswitch_8
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v3, :cond_c

    .line 754
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    .line 755
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->b(Z)V

    goto :goto_1

    .line 757
    :cond_c
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 745
    :pswitch_9
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v3, :cond_d

    .line 746
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    .line 747
    invoke-virtual {p2, v4}, Lcom/umeng/analytics/pro/aj;->a(Z)V

    goto :goto_1

    .line 749
    :cond_d
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 827
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 732
    check-cast p2, Lcom/umeng/analytics/pro/aj;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aj$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 850
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->G()V

    .line 852
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->H()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 853
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->I()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 855
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 858
    :cond_0
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 859
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->J()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 860
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 863
    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 864
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->K()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 865
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 868
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->L()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 869
    iget v0, p2, Lcom/umeng/analytics/pro/aj;->d:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    .line 870
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 871
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->M()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 872
    iget v0, p2, Lcom/umeng/analytics/pro/aj;->e:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    .line 873
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 874
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->N()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 875
    iget v0, p2, Lcom/umeng/analytics/pro/aj;->f:I

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(I)V

    .line 876
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 877
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 878
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->O()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 879
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/nio/ByteBuffer;)V

    .line 880
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 882
    :cond_3
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 883
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->P()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 884
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 887
    :cond_4
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 888
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->Q()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 889
    iget-object v0, p2, Lcom/umeng/analytics/pro/aj;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 892
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/aj;->F()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 893
    invoke-static {}, Lcom/umeng/analytics/pro/aj;->R()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 894
    iget p2, p2, Lcom/umeng/analytics/pro/aj;->j:I

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/bp;->a(I)V

    .line 895
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 897
    :cond_6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 898
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 732
    check-cast p2, Lcom/umeng/analytics/pro/aj;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/aj$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aj;)V

    return-void
.end method
