.class public Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
.super Ljava/lang/Object;
.source "SatFusionCalibrationData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SatFusionCalibrationData"


# instance fields
.field public final data:[B

.field public final size:I

.field public final type:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->type:I

    .line 3
    iput p2, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    .line 4
    iput-object p3, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->data:[B

    return-void
.end method

.method public static doUnmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 3
    new-array v2, v1, [B

    .line 4
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    new-instance p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;-><init>(II[B)V

    return-object p0
.end method

.method public static getHeaderSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static unmarshal([B)[Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    array-length v1, p0

    invoke-static {}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->getHeaderSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {p0}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->doUnmarshal(Ljava/nio/ByteBuffer;)Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    .line 7
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    .line 9
    :cond_3
    :goto_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->getHeaderSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    array-length v0, p0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "Expected size should be %d, but got: %d"

    .line 11
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SatFusionCalibrationData"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatFusionCalibrationData(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/SatFusionCalibrationData;->data:[B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
