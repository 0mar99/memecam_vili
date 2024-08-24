.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdq;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;
.source "com.google.mlkit:barcode-scanning@@17.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map$Entry;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    return p0
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzg()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    .line 3
    :pswitch_0
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzD(IJ)V

    return-void

    .line 5
    :pswitch_1
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzB(II)V

    return-void

    .line 7
    :pswitch_2
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzz(IJ)V

    return-void

    .line 9
    :pswitch_3
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzx(II)V

    return-void

    .line 11
    :pswitch_4
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 12
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzr(II)V

    return-void

    .line 13
    :pswitch_5
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 14
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzI(II)V

    return-void

    .line 15
    :pswitch_6
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 16
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-void

    .line 17
    :pswitch_7
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object p2

    .line 20
    invoke-interface {p1, p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    return-void

    .line 21
    :pswitch_8
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object p2

    .line 24
    invoke-interface {p1, p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    return-void

    .line 25
    :pswitch_9
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 26
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzG(ILjava/lang/String;)V

    return-void

    .line 27
    :pswitch_a
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 28
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzb(IZ)V

    return-void

    .line 29
    :pswitch_b
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 30
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzk(II)V

    return-void

    .line 31
    :pswitch_c
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 32
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzm(IJ)V

    return-void

    .line 33
    :pswitch_d
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 34
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzr(II)V

    return-void

    .line 35
    :pswitch_e
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 36
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzK(IJ)V

    return-void

    .line 37
    :pswitch_f
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 38
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzt(IJ)V

    return-void

    .line 39
    :pswitch_10
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 40
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzo(IF)V

    return-void

    .line 41
    :pswitch_11
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zza:I

    .line 42
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzf(ID)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    return p0
.end method
