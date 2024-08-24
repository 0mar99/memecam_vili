.class public final LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "CallbackData.java"


# instance fields
.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:I

.field public OooO0Oo:I

.field public OooO0o:Z

.field public OooO0o0:J

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    .line 3
    iput v0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    .line 4
    iput v0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    .line 5
    iput v0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:J

    .line 7
    iput-boolean v0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o:Z

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    return-void
.end method

.method public static final OooO00o(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;",
            ">;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 22
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    .line 23
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 24
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    mul-int/lit8 v5, v2, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.method public static final OooO0OO(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 4
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 5
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 7
    new-instance v4, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    invoke-direct {v4}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;-><init>()V

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    .line 8
    invoke-virtual {v4, p0, v1, v5, v6}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final OooO00o(Landroid/os/HwBlob;J)V
    .locals 10

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    .line 28
    iget v4, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    .line 29
    iget v4, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    .line 30
    iget v6, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    .line 31
    iget v8, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    .line 32
    iget-wide v8, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:J

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v6, 0x18

    add-long/2addr v6, p2

    .line 33
    iget-boolean v8, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v6, 0x20

    add-long/2addr v6, p2

    .line 34
    iget-object v8, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 35
    iget-object v6, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x30

    add-long/2addr p2, v7

    add-long/2addr v2, p2

    .line 36
    invoke-virtual {p1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v4, p2

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 38
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v6, 0xc

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v2, v6, :cond_0

    .line 39
    iget-object v4, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;

    mul-int/lit8 v5, v2, 0xc

    int-to-long v7, v5

    invoke-virtual {v4, v3, v7, v8}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO00o(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v0

    .line 40
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final OooO00o(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final OooO00o(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 3
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 4
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 5
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    .line 6
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    .line 7
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v6

    iput-wide v6, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:J

    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    .line 8
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o:Z

    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    .line 9
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 10
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v2

    const/16 v16, 0x0

    move-object/from16 v9, p1

    .line 12
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v6, 0x30

    add-long v6, p3, v6

    add-long/2addr v4, v6

    .line 13
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0xc

    int-to-long v9, v5

    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .line 15
    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 16
    iget-object v2, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 17
    new-instance v3, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;

    invoke-direct {v3}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;-><init>()V

    mul-int/lit8 v5, v2, 0xc

    int-to-long v5, v5

    move-object/from16 v7, p1

    .line 18
    invoke-virtual {v3, v7, v1, v5, v6}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO0Oo;->OooO00o(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 19
    iget-object v5, v0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final OooO0O0(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwBlob;J)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    .line 3
    iget v2, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    iget v3, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget v2, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    iget v3, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    if-eq v2, v3, :cond_4

    return v1

    .line 5
    :cond_4
    iget v2, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    iget v3, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    if-eq v2, v3, :cond_5

    return v1

    .line 6
    :cond_5
    iget v2, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    iget v3, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    if-eq v2, v3, :cond_6

    return v1

    .line 7
    :cond_6
    iget-wide v2, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:J

    iget-wide v4, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    .line 8
    :cond_7
    iget-boolean v2, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o:Z

    iget-boolean v3, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 9
    :cond_8
    iget-object v2, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO:Ljava/lang/String;

    iget-object v3, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 10
    :cond_9
    iget-object p0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    iget-object p1, p1, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object p0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    .line 9
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cameraId = "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .frameNumber = "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .sessionId = "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .timeStampUs = "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-wide v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .isParallelCamera = "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-boolean v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .metadata = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .images = "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, LOooO0o/OooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0oo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
