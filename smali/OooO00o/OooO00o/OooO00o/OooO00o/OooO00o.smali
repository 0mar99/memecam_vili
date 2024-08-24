.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:J

.field public OooO0OO:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    .line 4
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    return-void
.end method

.method public static final OooO00o(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;",
            ">;)V"
        }
    .end annotation

    .line 6
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    .line 9
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 10
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 13
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
            "LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;",
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

    mul-int/lit8 v3, v2, 0x18

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
    new-instance v4, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    invoke-direct {v4}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;-><init>()V

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    .line 8
    invoke-virtual {v4, p0, v1, v5, v6}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final OooO00o(Landroid/os/HwBlob;J)V
    .locals 4

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 14
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 15
    iget-wide v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v0, 0x10

    add-long/2addr p2, v0

    .line 16
    iget p0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final OooO00o(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x18

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final OooO00o(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    const-wide/16 v0, 0x10

    add-long/2addr p3, v0

    .line 5
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    return-void
.end method

.method public final OooO0O0(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o(Landroid/os/HwBlob;J)V

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

    const-class v3, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;

    .line 3
    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    iget v3, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget-wide v2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    iget-wide v4, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 5
    :cond_4
    iget p0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    iget p1, p1, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 5
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

    const-string v1, ".pid = "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .ptr = "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-wide v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0O0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .arch = "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget p0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO:I

    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o$OooO00o;->OooO0O0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
