.class public final Lcom/google/mlkit/vision/common/zza;
.super Lcom/google/mlkit/vision/common/PointF3D;
.source "com.google.mlkit:vision-common@@17.3.0"


# instance fields
.field public final zza:F

.field public final zzb:F

.field public final zzc:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/vision/common/PointF3D;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/common/zza;->zza:F

    iput p2, p0, Lcom/google/mlkit/vision/common/zza;->zzb:F

    iput p3, p0, Lcom/google/mlkit/vision/common/zza;->zzc:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/common/PointF3D;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/mlkit/vision/common/PointF3D;

    iget v1, p0, Lcom/google/mlkit/vision/common/zza;->zza:F

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/PointF3D;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mlkit/vision/common/zza;->zzb:F

    .line 4
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/PointF3D;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget p0, p0, Lcom/google/mlkit/vision/common/zza;->zzc:F

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/PointF3D;->getZ()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/zza;->zza:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/zza;->zzb:F

    return p0
.end method

.method public final getZ()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/common/zza;->zzc:F

    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/mlkit/vision/common/zza;->zza:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget v2, p0, Lcom/google/mlkit/vision/common/zza;->zzb:F

    .line 2
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget p0, p0, Lcom/google/mlkit/vision/common/zza;->zzc:F

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    mul-int/2addr v0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/mlkit/vision/common/zza;->zza:F

    iget v1, p0, Lcom/google/mlkit/vision/common/zza;->zzb:F

    iget p0, p0, Lcom/google/mlkit/vision/common/zza;->zzc:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PointF3D{x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", z="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
