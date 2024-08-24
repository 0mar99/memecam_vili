.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final zza:[I

.field public static final zzb:Lsun/misc/Unsafe;


# instance fields
.field public final zzc:[I

.field public final zzd:[Ljava/lang/Object;

.field public final zze:I

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:[I

.field public final zzk:I

.field public final zzl:I

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

.field public final zzp:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

.field public final zzq:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzg()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;ZZ[IIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzf:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzj:[I

    iput p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzk:I

    iput p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl:I

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzq:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    return-void
.end method

.method private final zzA(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-object p0
.end method

.method private final zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    .line 3
    aput-object v0, p0, p1

    return-object v0
.end method

.method private final zzC(I)Ljava/lang/Object;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final zzD(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v1, v1

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p0, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    .line 8
    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method private final zzE(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v1, p0

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    .line 7
    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public static zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static zzG(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzH(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 7
    invoke-virtual {p2, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 10
    invoke-virtual {p2, p1, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    return-void

    .line 12
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 13
    invoke-virtual {p0, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 15
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 17
    invoke-virtual {p0, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    .line 18
    :cond_3
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 20
    aget p0, p0, p3

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzI(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    aget v0, v0, p3

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    int-to-long v3, v1

    .line 4
    invoke-virtual {v2, p2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object p2

    .line 6
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 8
    invoke-virtual {p2, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v2

    .line 10
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 11
    invoke-virtual {p2, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzK(Ljava/lang/Object;II)V

    return-void

    .line 13
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 14
    invoke-virtual {p0, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object p3

    .line 17
    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 18
    invoke-virtual {p0, p1, v3, v4, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    .line 19
    :cond_3
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 21
    aget p0, p0, p3

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Source subfield "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzJ(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzv(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p2, p0

    int-to-long v0, p2

    const-wide/32 v2, 0xfffff

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p2

    const/4 v2, 0x1

    shl-int p0, v2, p0

    or-int/2addr p0, p2

    .line 3
    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzK(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzv(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzL(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzM(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzK(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzN(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;

    const/4 p0, 0x0

    .line 3
    throw p0
.end method

.method private final zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzP(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzv(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result p0

    and-int p2, p0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result p0

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 5
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return v6

    :cond_0
    return v5

    .line 6
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v6

    :cond_1
    return v5

    .line 7
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_2

    return v6

    :cond_2
    return v5

    .line 8
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    .line 9
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_4

    return v6

    :cond_4
    return v5

    .line 10
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_5

    return v6

    :cond_5
    return v5

    .line 11
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_6

    return v6

    :cond_6
    return v5

    .line 12
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v6

    :cond_7
    return v5

    .line 13
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    return v5

    .line 14
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 15
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 16
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v5

    .line 17
    :cond_a
    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz p1, :cond_c

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v6

    :cond_b
    return v5

    .line 19
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 21
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(Ljava/lang/Object;J)Z

    move-result p0

    return p0

    .line 22
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_d

    return v6

    :cond_d
    return v5

    .line 23
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    return v6

    :cond_e
    return v5

    .line 24
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-eqz p0, :cond_f

    return v6

    :cond_f
    return v5

    .line 25
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    return v6

    :cond_10
    return v5

    .line 26
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_11

    return v6

    :cond_11
    return v5

    .line 27
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(Ljava/lang/Object;J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_12

    return v6

    :cond_12
    return v5

    .line 28
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(Ljava/lang/Object;J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    .line 29
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_15

    return v6

    :cond_15
    return v5

    nop

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

.method private final zzQ(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzk(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static zzS(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzX()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final zzT(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzv(I)I

    move-result p0

    const p3, 0xfffff

    and-int/2addr p0, p3

    int-to-long v0, p0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzU(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzG(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    return-void
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    :cond_0
    return-object v0
.end method

.method public static zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfl;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;
    .locals 31

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    if-eqz v1, :cond_33

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzc()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int/lit8 v8, v5, 0x1

    .line 6
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_1

    move v5, v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :cond_1
    add-int/lit8 v5, v8, 0x1

    .line 7
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_1
    add-int/lit8 v11, v5, 0x1

    .line 8
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    add-int/lit8 v10, v10, 0xd

    move v5, v11

    goto :goto_1

    :cond_2
    shl-int/2addr v5, v10

    or-int/2addr v8, v5

    move v5, v11

    :cond_3
    if-nez v8, :cond_4

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zza:[I

    move v10, v4

    move v12, v10

    move v13, v12

    move v14, v13

    move/from16 v19, v14

    move-object/from16 v18, v8

    move/from16 v8, v19

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v8, v5, 0x1

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_6

    and-int/lit16 v5, v5, 0x1fff

    const/16 v10, 0xd

    :goto_2
    add-int/lit8 v11, v8, 0x1

    .line 10
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_5

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v11

    goto :goto_2

    :cond_5
    shl-int/2addr v8, v10

    or-int/2addr v5, v8

    move v8, v11

    :cond_6
    add-int/lit8 v10, v8, 0x1

    .line 11
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_3
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_7

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_3

    :cond_7
    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    move v10, v12

    :cond_8
    add-int/lit8 v11, v10, 0x1

    .line 13
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_4
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_9

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_4

    :cond_9
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_a
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_5
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_b

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_5

    :cond_b
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_c
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_6
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_6

    :cond_d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_e
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_7
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_f

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_7

    :cond_f
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_10
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_8
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_11

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_8

    :cond_11
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_12
    add-int/lit8 v16, v15, 0x1

    .line 23
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v4, v16

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v4, 0x1

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_13

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v16

    or-int/2addr v15, v4

    add-int/lit8 v16, v16, 0xd

    move/from16 v4, v17

    goto :goto_9

    :cond_13
    shl-int v4, v4, v16

    or-int/2addr v15, v4

    move/from16 v16, v17

    :cond_14
    add-int v4, v15, v13

    add-int/2addr v4, v14

    add-int v14, v5, v5

    add-int/2addr v14, v8

    .line 25
    new-array v8, v4, [I

    move v4, v5

    move-object/from16 v18, v8

    move v8, v10

    move v10, v14

    move/from16 v19, v15

    move/from16 v5, v16

    move v14, v11

    .line 26
    :goto_a
    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    add-int v20, v19, v13

    add-int v13, v12, v12

    mul-int/lit8 v12, v12, 0x3

    .line 29
    new-array v12, v12, [I

    .line 30
    new-array v13, v13, [Ljava/lang/Object;

    move/from16 v21, v19

    move/from16 v22, v20

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_b
    const/4 v7, 0x2

    if-ne v1, v7, :cond_15

    const/4 v7, 0x1

    goto :goto_c

    :cond_15
    const/4 v7, 0x0

    :goto_c
    if-ge v5, v3, :cond_32

    add-int/lit8 v24, v5, 0x1

    .line 31
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v6, 0x1

    .line 32
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v1

    const v1, 0xd800

    if-lt v6, v1, :cond_16

    and-int/lit16 v1, v6, 0x1fff

    shl-int v1, v1, v24

    or-int/2addr v5, v1

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v1, v27

    goto :goto_d

    :cond_16
    shl-int v1, v6, v24

    or-int/2addr v5, v1

    move/from16 v1, v26

    goto :goto_e

    :cond_17
    move/from16 v27, v1

    move/from16 v1, v24

    :goto_e
    add-int/lit8 v6, v1, 0x1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v24, v3

    const v3, 0xd800

    if-lt v1, v3, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    const/16 v26, 0xd

    :goto_f
    add-int/lit8 v28, v6, 0x1

    .line 34
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_18

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v1, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_f

    :cond_18
    shl-int v3, v6, v26

    or-int/2addr v1, v3

    move/from16 v6, v28

    :cond_19
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_1a

    add-int/lit8 v3, v16, 0x1

    .line 35
    aput v17, v18, v16

    move/from16 v16, v3

    :cond_1a
    and-int/lit16 v3, v1, 0xff

    move/from16 v26, v14

    const/16 v14, 0x33

    if-lt v3, v14, :cond_22

    add-int/lit8 v14, v6, 0x1

    .line 36
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v28, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1c

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v28

    const/16 v28, 0xd

    :goto_10
    add-int/lit8 v29, v14, 0x1

    .line 37
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v30, v8

    const v8, 0xd800

    if-lt v14, v8, :cond_1b

    and-int/lit16 v8, v14, 0x1fff

    shl-int v8, v8, v28

    or-int/2addr v6, v8

    add-int/lit8 v28, v28, 0xd

    move/from16 v14, v29

    move/from16 v8, v30

    goto :goto_10

    :cond_1b
    shl-int v8, v14, v28

    or-int/2addr v6, v8

    move/from16 v14, v29

    goto :goto_11

    :cond_1c
    move/from16 v30, v8

    move/from16 v14, v28

    :goto_11
    add-int/lit8 v8, v3, -0x33

    move/from16 v28, v14

    const/16 v14, 0x9

    if-eq v8, v14, :cond_1e

    const/16 v14, 0x11

    if-ne v8, v14, :cond_1d

    goto :goto_12

    :cond_1d
    const/16 v14, 0xc

    if-ne v8, v14, :cond_1f

    if-nez v7, :cond_1f

    .line 38
    div-int/lit8 v7, v17, 0x3

    add-int/2addr v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int/lit8 v8, v10, 0x1

    .line 39
    aget-object v10, v15, v10

    aput-object v10, v13, v7

    goto :goto_13

    .line 40
    :cond_1e
    :goto_12
    div-int/lit8 v7, v17, 0x3

    add-int/2addr v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int/lit8 v8, v10, 0x1

    .line 41
    aget-object v10, v15, v10

    aput-object v10, v13, v7

    :goto_13
    move v10, v8

    :cond_1f
    add-int/2addr v6, v6

    .line 42
    aget-object v7, v15, v6

    .line 43
    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_20

    .line 44
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 45
    :cond_20
    check-cast v7, Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 46
    aput-object v7, v15, v6

    .line 47
    :goto_14
    invoke-virtual {v11, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    add-int/lit8 v6, v6, 0x1

    .line 48
    aget-object v8, v15, v6

    .line 49
    instance-of v14, v8, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    .line 50
    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 51
    :cond_21
    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 52
    aput-object v8, v15, v6

    :goto_15
    move v14, v7

    .line 53
    invoke-virtual {v11, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v6, v6

    move v7, v14

    move-object/from16 v23, v15

    move/from16 v25, v28

    move v14, v6

    const/4 v6, 0x0

    goto/16 :goto_20

    :cond_22
    move/from16 v30, v8

    add-int/lit8 v8, v10, 0x1

    .line 54
    aget-object v10, v15, v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v14, 0x9

    if-eq v3, v14, :cond_2a

    const/16 v14, 0x11

    if-ne v3, v14, :cond_23

    goto :goto_19

    :cond_23
    const/16 v14, 0x1b

    if-eq v3, v14, :cond_29

    const/16 v14, 0x31

    if-ne v3, v14, :cond_24

    goto :goto_17

    :cond_24
    const/16 v14, 0xc

    if-eq v3, v14, :cond_27

    const/16 v14, 0x1e

    if-eq v3, v14, :cond_27

    const/16 v14, 0x2c

    if-ne v3, v14, :cond_25

    goto :goto_16

    :cond_25
    const/16 v7, 0x32

    if-ne v3, v7, :cond_28

    add-int/lit8 v7, v21, 0x1

    .line 55
    aput v17, v18, v21

    div-int/lit8 v14, v17, 0x3

    add-int/lit8 v21, v8, 0x1

    .line 56
    aget-object v8, v15, v8

    add-int/2addr v14, v14

    aput-object v8, v13, v14

    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_26

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v8, v21, 0x1

    .line 57
    aget-object v21, v15, v21

    aput-object v21, v13, v14

    move/from16 v21, v7

    goto :goto_1a

    :cond_26
    move-object/from16 v23, v15

    move/from16 v8, v21

    move/from16 v21, v7

    goto :goto_1b

    :cond_27
    :goto_16
    if-nez v7, :cond_28

    .line 58
    div-int/lit8 v7, v17, 0x3

    add-int/2addr v7, v7

    const/4 v14, 0x1

    add-int/2addr v7, v14

    add-int/lit8 v23, v8, 0x1

    .line 59
    aget-object v8, v15, v8

    aput-object v8, v13, v7

    goto :goto_18

    :cond_28
    const/4 v14, 0x1

    goto :goto_1a

    :cond_29
    :goto_17
    const/4 v14, 0x1

    .line 60
    div-int/lit8 v7, v17, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v14

    add-int/lit8 v23, v8, 0x1

    .line 61
    aget-object v8, v15, v8

    aput-object v8, v13, v7

    :goto_18
    move/from16 v8, v23

    goto :goto_1a

    :cond_2a
    :goto_19
    const/4 v14, 0x1

    .line 62
    div-int/lit8 v7, v17, 0x3

    add-int/2addr v7, v7

    add-int/2addr v7, v14

    .line 63
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v23

    aput-object v23, v13, v7

    :goto_1a
    move-object/from16 v23, v15

    .line 64
    :goto_1b
    invoke-virtual {v11, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v7, v14

    and-int/lit16 v10, v1, 0x1000

    const v14, 0xfffff

    const/16 v15, 0x1000

    if-ne v10, v15, :cond_2e

    const/16 v10, 0x11

    if-gt v3, v10, :cond_2e

    add-int/lit8 v10, v6, 0x1

    .line 65
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v15, 0xd800

    if-lt v6, v15, :cond_2c

    and-int/lit16 v6, v6, 0x1fff

    const/16 v14, 0xd

    :goto_1c
    add-int/lit8 v25, v10, 0x1

    .line 66
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v15, :cond_2b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v14

    or-int/2addr v6, v10

    add-int/lit8 v14, v14, 0xd

    move/from16 v10, v25

    goto :goto_1c

    :cond_2b
    shl-int/2addr v10, v14

    or-int/2addr v6, v10

    goto :goto_1d

    :cond_2c
    move/from16 v25, v10

    :goto_1d
    add-int v10, v4, v4

    div-int/lit8 v14, v6, 0x20

    add-int/2addr v10, v14

    .line 67
    aget-object v14, v23, v10

    .line 68
    instance-of v15, v14, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_2d

    .line 69
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 70
    :cond_2d
    check-cast v14, Ljava/lang/String;

    invoke-static {v9, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzF(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 71
    aput-object v14, v23, v10

    .line 72
    :goto_1e
    invoke-virtual {v11, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v10, v14

    rem-int/lit8 v6, v6, 0x20

    move v14, v10

    goto :goto_1f

    :cond_2e
    move/from16 v25, v6

    const/4 v6, 0x0

    :goto_1f
    const/16 v10, 0x12

    if-lt v3, v10, :cond_2f

    const/16 v10, 0x31

    if-gt v3, v10, :cond_2f

    add-int/lit8 v10, v22, 0x1

    .line 73
    aput v7, v18, v22

    move/from16 v22, v10

    :cond_2f
    move v10, v8

    :goto_20
    add-int/lit8 v8, v17, 0x1

    .line 74
    aput v5, v12, v17

    add-int/lit8 v5, v8, 0x1

    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_30

    const/high16 v15, 0x20000000

    goto :goto_21

    :cond_30
    const/4 v15, 0x0

    :goto_21
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_31

    const/high16 v1, 0x10000000

    goto :goto_22

    :cond_31
    const/4 v1, 0x0

    :goto_22
    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v15

    or-int/2addr v1, v3

    or-int/2addr v1, v7

    .line 75
    aput v1, v12, v8

    add-int/lit8 v17, v5, 0x1

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v14

    .line 76
    aput v1, v12, v5

    move-object/from16 v15, v23

    move/from16 v3, v24

    move/from16 v5, v25

    move/from16 v14, v26

    move/from16 v1, v27

    move/from16 v8, v30

    const v6, 0xd800

    goto/16 :goto_b

    :cond_32
    move/from16 v30, v8

    move/from16 v26, v14

    .line 77
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfz;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move-result-object v15

    const/16 v17, 0x0

    move-object v10, v1

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v30

    move/from16 v16, v7

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    move-object/from16 v25, p6

    invoke-direct/range {v10 .. v25}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;ZZ[IIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;)V

    return-object v1

    .line 79
    :cond_33
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    const/4 v0, 0x0

    .line 80
    throw v0
.end method

.method public static zzm(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static zzn(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzo(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    const v3, 0xfffff

    move v7, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v9, v9

    if-ge v5, v9, :cond_6

    .line 2
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 3
    aget v11, v10, v5

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_1

    add-int/lit8 v13, v5, 0x2

    .line 4
    aget v10, v10, v13

    and-int v13, v10, v3

    ushr-int/lit8 v10, v10, 0x14

    if-eq v13, v7, :cond_0

    int-to-long v7, v13

    .line 5
    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v13

    :cond_0
    shl-int v10, v14, v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/2addr v9, v3

    int-to-long v3, v9

    const/16 v9, 0x3f

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_9

    .line 6
    :pswitch_0
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 7
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    .line 8
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v4

    .line 9
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v3

    goto/16 :goto_8

    .line 10
    :pswitch_1
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 11
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v11, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    xor-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto/16 :goto_9

    .line 12
    :pswitch_2
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 13
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto/16 :goto_6

    .line 14
    :pswitch_3
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto/16 :goto_4

    .line 16
    :pswitch_4
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto/16 :goto_3

    .line 18
    :pswitch_5
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 19
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 20
    :pswitch_6
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 21
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 22
    :pswitch_7
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 23
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    .line 24
    sget v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    :goto_2
    add-int/2addr v3, v9

    goto/16 :goto_8

    .line 26
    :pswitch_8
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 27
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v3

    goto/16 :goto_8

    .line 29
    :pswitch_9
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 30
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v4, :cond_2

    .line 32
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto :goto_2

    .line 34
    :cond_2
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    .line 35
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 36
    :pswitch_a
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_8

    .line 38
    :pswitch_b
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    .line 39
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto :goto_3

    .line 40
    :pswitch_c
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    .line 41
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto :goto_4

    .line 42
    :pswitch_d
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 43
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 44
    :pswitch_e
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 45
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 46
    :pswitch_f
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 47
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 48
    :pswitch_10
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    .line 49
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    :goto_3
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_8

    .line 50
    :pswitch_11
    invoke-direct {v0, v1, v11, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    shl-int/lit8 v3, v11, 0x3

    .line 51
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    :goto_4
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_8

    .line 52
    :pswitch_12
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v4

    .line 53
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 54
    :pswitch_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 55
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v4

    .line 56
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v3

    goto/16 :goto_8

    .line 57
    :pswitch_14
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzs(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 59
    :pswitch_15
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzq(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 61
    :pswitch_16
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 62
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 63
    :pswitch_17
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 64
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 65
    :pswitch_18
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzd(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 67
    :pswitch_19
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 68
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzv(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 69
    :pswitch_1a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 70
    sget v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza:I

    .line 71
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 72
    :pswitch_1b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 73
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 74
    :pswitch_1c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 75
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 76
    :pswitch_1d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 77
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzk(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_5

    .line 78
    :pswitch_1e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 79
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzx(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_5

    .line 80
    :pswitch_1f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 81
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzm(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_5

    .line 82
    :pswitch_20
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 83
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_5

    .line 84
    :pswitch_21
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 85
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    :goto_5
    add-int/2addr v4, v9

    :goto_6
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto/16 :goto_9

    .line 86
    :pswitch_22
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    .line 87
    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_23
    const/4 v9, 0x0

    .line 88
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 89
    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_24
    const/4 v9, 0x0

    .line 90
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 91
    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_25
    const/4 v9, 0x0

    .line 92
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 93
    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_26
    const/4 v9, 0x0

    .line 94
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 95
    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzc(ILjava/util/List;Z)I

    move-result v3

    :goto_7
    add-int/2addr v6, v3

    move v12, v9

    goto/16 :goto_f

    :pswitch_27
    const/4 v9, 0x0

    .line 96
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 97
    invoke-static {v11, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto :goto_8

    .line 98
    :pswitch_28
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb(ILjava/util/List;)I

    move-result v3

    goto :goto_8

    .line 100
    :pswitch_29
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v4

    .line 101
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v3

    goto :goto_8

    .line 102
    :pswitch_2a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzt(ILjava/util/List;)I

    move-result v3

    :goto_8
    add-int/2addr v6, v3

    :cond_3
    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_f

    .line 103
    :pswitch_2b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v12, 0x0

    .line 104
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2c
    const/4 v12, 0x0

    .line 105
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 106
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2d
    const/4 v12, 0x0

    .line 107
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 108
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2e
    const/4 v12, 0x0

    .line 109
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 110
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzj(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_2f
    const/4 v12, 0x0

    .line 111
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 112
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzw(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_30
    const/4 v12, 0x0

    .line 113
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 114
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzl(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_31
    const/4 v12, 0x0

    .line 115
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 116
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;Z)I

    move-result v3

    goto :goto_a

    :pswitch_32
    const/4 v12, 0x0

    .line 117
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 118
    invoke-static {v11, v3, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;Z)I

    move-result v3

    :goto_a
    add-int/2addr v6, v3

    goto/16 :goto_f

    :pswitch_33
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 119
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    .line 120
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v4

    .line 121
    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v3

    goto :goto_a

    :pswitch_34
    const/4 v12, 0x0

    and-int/2addr v10, v8

    if-eqz v10, :cond_5

    .line 122
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v10, v11, 0x3

    add-long v14, v3, v3

    shr-long/2addr v3, v9

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    xor-long/2addr v3, v14

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v9

    goto/16 :goto_f

    :pswitch_35
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 123
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto/16 :goto_c

    :pswitch_36
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    .line 124
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto/16 :goto_e

    :pswitch_37
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    .line 125
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto/16 :goto_d

    :pswitch_38
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 126
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_c

    :pswitch_39
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 127
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_c

    :pswitch_3a
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 128
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    .line 129
    sget v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 130
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    :goto_b
    add-int/2addr v3, v9

    goto/16 :goto_a

    :pswitch_3b
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 131
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 132
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v3

    goto/16 :goto_a

    :pswitch_3c
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 133
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 134
    instance-of v4, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v4, :cond_4

    .line 135
    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v4, v11, 0x3

    sget v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 136
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto :goto_b

    .line 137
    :cond_4
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    .line 138
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_c

    :pswitch_3d
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    .line 139
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    add-int/2addr v3, v14

    goto/16 :goto_a

    :pswitch_3e
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    .line 140
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto :goto_d

    :pswitch_3f
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    .line 141
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    goto :goto_e

    :pswitch_40
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 142
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_c

    :pswitch_41
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 143
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_c

    :pswitch_42
    const/4 v12, 0x0

    and-int v9, v8, v10

    if-eqz v9, :cond_5

    .line 144
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v3

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    :goto_c
    add-int/2addr v4, v3

    add-int/2addr v6, v4

    goto :goto_f

    :pswitch_43
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    .line 145
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    :goto_d
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_a

    :pswitch_44
    const/4 v12, 0x0

    and-int v3, v8, v10

    if-eqz v3, :cond_5

    shl-int/lit8 v3, v11, 0x3

    .line 146
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v3

    :goto_e
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_a

    :cond_5
    :goto_f
    add-int/lit8 v5, v5, 0x3

    const v3, 0xfffff

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    .line 147
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 148
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v0

    move v4, v12

    :goto_10
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;->zzb()I

    move-result v1

    if-ge v4, v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;

    .line 152
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v12, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v12, v1

    goto :goto_11

    :cond_8
    add-int/2addr v6, v12

    :cond_9
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public static zzp(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 3
    move-object p4, p3

    check-cast p4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zze()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    move-result-object p4

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    move-result-object p4

    .line 6
    invoke-static {p4, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, p1, p6, p7, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    :goto_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;

    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method private final zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    .line 1
    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    add-int/lit8 v13, v10, 0x2

    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    .line 2
    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    .line 5
    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzM(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_1
    if-nez v3, :cond_6

    .line 6
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_2
    if-nez v3, :cond_6

    .line 9
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_3
    if-nez v3, :cond_6

    .line 12
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 13
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzA(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzj(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 16
    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 17
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_5

    :pswitch_4
    if-ne v3, v15, :cond_6

    .line 18
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 19
    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_5
    if-ne v3, v15, :cond_6

    .line 21
    invoke-direct {v0, v1, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzE(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    .line 22
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    .line 23
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    .line 24
    invoke-direct {v0, v1, v9, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzM(Ljava/lang/Object;IILjava/lang/Object;)V

    return v2

    :pswitch_6
    if-ne v3, v15, :cond_6

    .line 25
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-nez v2, :cond_2

    const-string v2, ""

    .line 26
    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_4

    add-int v3, v0, v2

    .line 27
    invoke-static {v4, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzh([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 28
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    .line 29
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/String;

    .line 30
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 31
    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    .line 32
    :goto_2
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v3, v0

    goto/16 :goto_5

    :pswitch_7
    if-nez v3, :cond_6

    .line 33
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 34
    :goto_3
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_8
    if-ne v3, v14, :cond_6

    .line 36
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    .line 37
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_9
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    .line 38
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    .line 39
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_a
    if-nez v3, :cond_6

    .line 40
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_b
    if-nez v3, :cond_6

    .line 43
    invoke-static {v4, v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v2, v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_c
    if-ne v3, v14, :cond_6

    .line 46
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    .line 48
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :pswitch_d
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    .line 49
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v11, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    .line 51
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v0

    :cond_6
    :goto_4
    move v3, v5

    :goto_5
    return v3

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move-wide/from16 v10, p12

    move-object/from16 v7, p14

    .line 1
    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    .line 2
    invoke-interface {v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc()Z

    move-result v13

    if-nez v13, :cond_1

    .line 3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    .line 4
    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v13, v1, v10, v11, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v10, 0x5

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/4 v11, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_4b

    .line 6
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 8
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_0
    if-ne v6, v11, :cond_4

    .line 9
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 11
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 12
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    goto/16 :goto_28

    .line 13
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_4
    if-nez v6, :cond_4b

    .line 14
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 16
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    :goto_2
    if-ge v0, v5, :cond_6

    .line 17
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(J)J

    move-result-wide v8

    .line 19
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :pswitch_1
    if-ne v6, v11, :cond_9

    .line 20
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 21
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_4
    if-ge v0, v1, :cond_7

    .line 22
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v2, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    goto :goto_4

    :cond_7
    if-ne v0, v1, :cond_8

    goto/16 :goto_28

    .line 24
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v6, :cond_4b

    .line 25
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 26
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    :goto_5
    if-ge v0, v5, :cond_b

    .line 28
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_a

    goto :goto_6

    .line 29
    :cond_a
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb(I)I

    move-result v1

    .line 30
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    goto :goto_5

    :cond_b
    :goto_6
    return v0

    :pswitch_2
    if-ne v6, v11, :cond_c

    .line 31
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzf([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    goto :goto_7

    :cond_c
    if-nez v6, :cond_4b

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 32
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    .line 33
    :goto_7
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzA(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 34
    sget v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza:I

    if-eqz v3, :cond_12

    .line 35
    instance-of v4, v12, Ljava/util/RandomAccess;

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    .line 36
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v4, :cond_f

    .line 37
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 38
    invoke-interface {v3, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eq v11, v6, :cond_d

    .line 39
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 40
    :cond_e
    invoke-static {v1, v8, v7, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzB(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;)Ljava/lang/Object;

    move-result-object v5

    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_f
    if-eq v6, v4, :cond_12

    .line 41
    invoke-interface {v12, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v2

    .line 42
    :cond_10
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 44
    invoke-interface {v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v7

    if-nez v7, :cond_11

    .line 45
    invoke-static {v1, v8, v6, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzB(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;)Ljava/lang/Object;

    move-result-object v5

    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_12
    move v0, v2

    goto/16 :goto_28

    :pswitch_3
    if-ne v6, v11, :cond_4b

    .line 47
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v1, :cond_1a

    .line 48
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_19

    if-nez v1, :cond_13

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 50
    :cond_13
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr v0, v1

    :goto_c
    if-ge v0, v5, :cond_18

    .line 51
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_14

    goto :goto_d

    .line 52
    :cond_14
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v1, :cond_17

    .line 53
    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_16

    if-nez v1, :cond_15

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 55
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 56
    :cond_15
    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzr([BII)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 57
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    .line 58
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_18
    :goto_d
    return v0

    .line 59
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    .line 60
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :pswitch_4
    if-ne v6, v11, :cond_4b

    .line 61
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 62
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    return v0

    :pswitch_5
    if-ne v6, v11, :cond_4b

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v13

    const-string v1, ""

    if-nez v0, :cond_1f

    .line 63
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_1e

    if-nez v4, :cond_1b

    .line 64
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 65
    :cond_1b
    new-instance v6, Ljava/lang/String;

    .line 66
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 67
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/2addr v0, v4

    :goto_f
    if-ge v0, v5, :cond_4c

    .line 68
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ne v2, v6, :cond_4c

    .line 69
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_1d

    if-nez v4, :cond_1c

    .line 70
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    new-instance v6, Ljava/lang/String;

    .line 71
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 72
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 73
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    .line 74
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    .line 75
    :cond_1f
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v4, :cond_26

    if-nez v4, :cond_20

    .line 76
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_10

    :cond_20
    add-int v6, v0, v4

    .line 77
    invoke-static {v3, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzh([BII)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 78
    new-instance v8, Ljava/lang/String;

    .line 79
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 80
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    if-ge v6, v5, :cond_24

    .line 81
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ne v2, v4, :cond_24

    .line 82
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v6

    iget v0, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-ltz v0, :cond_23

    if-nez v0, :cond_21

    .line 83
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_21
    add-int v4, v6, v0

    .line 84
    invoke-static {v3, v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhn;->zzh([BII)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 85
    new-instance v8, Ljava/lang/String;

    .line 86
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v6, v0, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 87
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v4

    goto :goto_10

    .line 88
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    .line 89
    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_24
    move v0, v6

    goto/16 :goto_28

    .line 90
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    .line 91
    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :pswitch_6
    if-ne v6, v11, :cond_2a

    .line 92
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    .line 93
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_11
    if-ge v0, v1, :cond_28

    .line 94
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v2, v4, v13

    if-eqz v2, :cond_27

    move v2, v15

    goto :goto_12

    :cond_27
    const/4 v2, 0x0

    .line 95
    :goto_12
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zze(Z)V

    goto :goto_11

    :cond_28
    if-ne v0, v1, :cond_29

    goto/16 :goto_28

    .line 96
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_2a
    if-nez v6, :cond_4b

    .line 97
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    .line 98
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v1, v8, v13

    if-eqz v1, :cond_2b

    move v1, v15

    goto :goto_13

    :cond_2b
    const/4 v1, 0x0

    .line 99
    :goto_13
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zze(Z)V

    :goto_14
    if-ge v0, v5, :cond_2e

    .line 100
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_2c

    goto :goto_16

    .line 101
    :cond_2c
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v1, v8, v13

    if-eqz v1, :cond_2d

    move v1, v15

    goto :goto_15

    :cond_2d
    const/4 v1, 0x0

    .line 102
    :goto_15
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;->zze(Z)V

    goto :goto_14

    :cond_2e
    :goto_16
    return v0

    :pswitch_7
    if-ne v6, v11, :cond_31

    .line 103
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 104
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_17
    if-ge v0, v1, :cond_2f

    .line 105
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_17

    :cond_2f
    if-ne v0, v1, :cond_30

    goto/16 :goto_28

    .line 106
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_31
    if-ne v6, v10, :cond_4b

    .line 107
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;

    .line 108
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_18
    if-ge v0, v5, :cond_33

    .line 109
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_32

    goto :goto_19

    .line 110
    :cond_32
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzee;->zzg(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_18

    :cond_33
    :goto_19
    return v0

    :pswitch_8
    if-ne v6, v11, :cond_36

    .line 111
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 112
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_1a
    if-ge v0, v1, :cond_34

    .line 113
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1a

    :cond_34
    if-ne v0, v1, :cond_35

    goto/16 :goto_28

    .line 114
    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_36
    if-ne v6, v15, :cond_4b

    .line 115
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 116
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_1b
    if-ge v0, v5, :cond_38

    .line 117
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_37

    goto :goto_1c

    .line 118
    :cond_37
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_1b

    :cond_38
    :goto_1c
    return v0

    :pswitch_9
    if-ne v6, v11, :cond_39

    .line 119
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzf([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto/16 :goto_28

    :cond_39
    if-nez v6, :cond_4b

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 120
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzl(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    return v0

    :pswitch_a
    if-ne v6, v11, :cond_3c

    .line 121
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 122
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_1d
    if-ge v0, v1, :cond_3a

    .line 123
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 124
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    goto :goto_1d

    :cond_3a
    if-ne v0, v1, :cond_3b

    goto/16 :goto_28

    .line 125
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_3c
    if-nez v6, :cond_4b

    .line 126
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;

    .line 127
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 128
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    :goto_1e
    if-ge v0, v5, :cond_3e

    .line 129
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_3d

    goto :goto_1f

    .line 130
    :cond_3d
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 131
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfd;->zzf(J)V

    goto :goto_1e

    :cond_3e
    :goto_1f
    return v0

    :pswitch_b
    if-ne v6, v11, :cond_41

    .line 132
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    .line 133
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_20
    if-ge v0, v1, :cond_3f

    .line 134
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 135
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_20

    :cond_3f
    if-ne v0, v1, :cond_40

    goto/16 :goto_28

    .line 136
    :cond_40
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_41
    if-ne v6, v10, :cond_4b

    .line 137
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;

    .line 138
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 139
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_21
    if-ge v0, v5, :cond_43

    .line 140
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_42

    goto :goto_22

    .line 141
    :cond_42
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 142
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdv;->zzg(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_21

    :cond_43
    :goto_22
    return v0

    :pswitch_c
    if-ne v6, v11, :cond_46

    .line 143
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    .line 144
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    add-int/2addr v1, v0

    :goto_23
    if-ge v0, v1, :cond_44

    .line 145
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 146
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;->zze(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_23

    :cond_44
    if-ne v0, v1, :cond_45

    goto :goto_28

    .line 147
    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_46
    if-ne v6, v15, :cond_4b

    .line 148
    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;

    .line 149
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 150
    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;->zze(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_24
    if-ge v0, v5, :cond_48

    .line 151
    invoke-static {v3, v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v4, :cond_47

    goto :goto_25

    .line 152
    :cond_47
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 153
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdl;->zze(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_24

    :cond_48
    :goto_25
    return v0

    :goto_26
    if-ge v4, v5, :cond_4a

    .line 154
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    if-eq v2, v8, :cond_49

    goto :goto_27

    :cond_49
    move-object/from16 p6, v0

    move-object/from16 p7, p2

    move/from16 p8, v6

    move/from16 p9, p4

    move/from16 p10, v1

    move-object/from16 p11, p14

    .line 155
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 156
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4a
    :goto_27
    return v4

    :cond_4b
    move v0, v4

    :cond_4c
    :goto_28
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzt(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzw(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final zzu(II)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzf:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzw(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final zzv(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private final zzw(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 2
    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static zzx(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final zzy(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method public static zzz(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 3
    aget v6, v6, v2

    const v7, 0xfffff

    and-int/2addr v4, v7

    .line 4
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzJ:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza()I

    move-result v7

    if-lt v5, v7, :cond_0

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zzW:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdu;->zza()I

    move-result v7

    if-gt v5, v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    add-int/lit8 v8, v2, 0x2

    .line 7
    aget v7, v7, v8

    :cond_0
    int-to-long v7, v4

    const/16 v4, 0x3f

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_9

    .line 8
    :pswitch_0
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    .line 10
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    .line 11
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v4

    goto/16 :goto_2

    .line 12
    :pswitch_1
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    add-long v9, v7, v7

    shr-long v6, v7, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    xor-long v5, v9, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v5

    goto/16 :goto_3

    .line 14
    :pswitch_2
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 16
    :pswitch_3
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 17
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_8

    .line 18
    :pswitch_4
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 19
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_7

    .line 20
    :pswitch_5
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 21
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 22
    :pswitch_6
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 24
    :pswitch_7
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v6, 0x3

    .line 26
    sget v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_4

    .line 28
    :pswitch_8
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 30
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v4

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 33
    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v5, :cond_1

    .line 34
    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_4

    .line 36
    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    .line 37
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 38
    :pswitch_a
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 39
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_5

    .line 40
    :pswitch_b
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 41
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_7

    .line 42
    :pswitch_c
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 43
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_8

    .line 44
    :pswitch_d
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 48
    :pswitch_f
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 50
    :pswitch_10
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 51
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_7

    .line 52
    :pswitch_11
    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_8

    .line 54
    :pswitch_12
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v5

    .line 55
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 56
    :pswitch_13
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 57
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    .line 58
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v4

    goto/16 :goto_2

    .line 59
    :pswitch_14
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 60
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzs(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 61
    :pswitch_15
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzq(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 63
    :pswitch_16
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 64
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 65
    :pswitch_17
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 66
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 67
    :pswitch_18
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 68
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzd(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 69
    :pswitch_19
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 70
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzv(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 71
    :pswitch_1a
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 72
    sget v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza:I

    .line 73
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 74
    :pswitch_1b
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 75
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 76
    :pswitch_1c
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 77
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_1

    .line 78
    :pswitch_1d
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 79
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzk(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto :goto_1

    .line 80
    :pswitch_1e
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 81
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzx(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto :goto_1

    .line 82
    :pswitch_1f
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 83
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzm(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto :goto_1

    .line 84
    :pswitch_20
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 85
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto :goto_1

    .line 86
    :pswitch_21
    invoke-virtual {v0, p1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 87
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzh(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    :goto_1
    add-int/2addr v5, v6

    goto/16 :goto_6

    .line 88
    :pswitch_22
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 89
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 90
    :pswitch_23
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 91
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 92
    :pswitch_24
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 93
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 94
    :pswitch_25
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 95
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 96
    :pswitch_26
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 97
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzc(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 98
    :pswitch_27
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 99
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_2

    .line 100
    :pswitch_28
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 101
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzb(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_2

    .line 102
    :pswitch_29
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 103
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    .line 104
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v4

    goto :goto_2

    .line 105
    :pswitch_2a
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 106
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzt(ILjava/util/List;)I

    move-result v4

    goto :goto_2

    .line 107
    :pswitch_2b
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 108
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 109
    :pswitch_2c
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 110
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 111
    :pswitch_2d
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 112
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 113
    :pswitch_2e
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 114
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzj(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 115
    :pswitch_2f
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 116
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 117
    :pswitch_30
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 118
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzl(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 119
    :pswitch_31
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 120
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zze(ILjava/util/List;Z)I

    move-result v4

    goto :goto_2

    .line 121
    :pswitch_32
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 122
    invoke-static {v6, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzg(ILjava/util/List;Z)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_9

    .line 123
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    .line 125
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    .line 126
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzt(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v4

    goto :goto_2

    .line 127
    :pswitch_34
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v7

    shl-int/lit8 v5, v6, 0x3

    add-long v9, v7, v7

    shr-long v6, v7, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    xor-long v5, v9, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v5

    :goto_3
    add-int/2addr v4, v5

    goto :goto_2

    .line 129
    :pswitch_35
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_6

    .line 131
    :pswitch_36
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 132
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_8

    .line 133
    :pswitch_37
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 134
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto/16 :goto_7

    .line 135
    :pswitch_38
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 137
    :pswitch_39
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto/16 :goto_6

    .line 139
    :pswitch_3a
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v6, 0x3

    .line 141
    sget v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 142
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    :goto_4
    add-int/2addr v4, v6

    goto/16 :goto_2

    .line 143
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 145
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzn(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)I

    move-result v4

    goto/16 :goto_2

    .line 146
    :pswitch_3c
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 148
    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    if-eqz v5, :cond_2

    .line 149
    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    shl-int/lit8 v5, v6, 0x3

    sget v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzb:I

    .line 150
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzd()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_4

    .line 151
    :cond_2
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v6, 0x3

    .line 152
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzx(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto :goto_6

    .line 153
    :pswitch_3d
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 154
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 155
    :pswitch_3e
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 156
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_7

    .line 157
    :pswitch_3f
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 158
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    goto :goto_8

    .line 159
    :pswitch_40
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v6, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzu(I)I

    move-result v4

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto :goto_6

    .line 161
    :pswitch_41
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    goto :goto_6

    .line 163
    :pswitch_42
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v6, v6, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzz(J)I

    move-result v4

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v5

    :goto_6
    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto :goto_9

    .line 165
    :pswitch_43
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 166
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    :goto_7
    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_2

    .line 167
    :pswitch_44
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    shl-int/lit8 v4, v6, 0x3

    .line 168
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdj;->zzy(I)I

    move-result v4

    :goto_8
    add-int/lit8 v4, v4, 0x8

    goto/16 :goto_2

    :cond_3
    :goto_9
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 169
    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zza(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v3, p0

    goto :goto_a

    .line 172
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo(Ljava/lang/Object;)I

    move-result v3

    :goto_a
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method public final zzb(Ljava/lang/Object;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 3
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v3

    int-to-long v5, v5

    const/16 v7, 0x25

    const/16 v8, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 21
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzU(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zza(Z)I

    move-result v3

    goto/16 :goto_3

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_3

    .line 40
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_3

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zza(Z)I

    move-result v3

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzem;->zzd:[B

    :goto_2
    ushr-long v5, v3, v8

    xor-long/2addr v3, v5

    long-to-int v3, v3

    :goto_3
    add-int/2addr v2, v3

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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

.method public final zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzG(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    const/4 v8, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    move v1, v8

    move/from16 v2, v16

    move v3, v2

    move v5, v3

    const v6, 0xfffff

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_20

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v7

    .line 4
    invoke-direct {v15, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzu(II)I

    move-result v1

    goto :goto_2

    .line 5
    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzt(I)I

    move-result v1

    :goto_2
    move v2, v1

    const-wide/16 v19, 0x0

    if-ne v2, v8, :cond_2

    move/from16 v22, v0

    move/from16 v18, v5

    move/from16 v27, v6

    move/from16 v21, v8

    move-object/from16 v32, v10

    move v7, v11

    move/from16 v26, v16

    const/16 v25, 0x1

    move v8, v4

    goto/16 :goto_15

    :cond_2
    and-int/lit8 v8, v4, 0x7

    .line 6
    iget-object v7, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    add-int/lit8 v22, v2, 0x1

    .line 7
    aget v1, v7, v22

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v11

    move/from16 v18, v0

    const v13, 0xfffff

    and-int v0, v1, v13

    int-to-long v13, v0

    const/16 v0, 0x11

    move/from16 v24, v4

    const/4 v4, 0x2

    if-gt v11, v0, :cond_f

    add-int/lit8 v0, v2, 0x2

    .line 8
    aget v0, v7, v0

    ushr-int/lit8 v7, v0, 0x14

    const/16 v23, 0x1

    shl-int v7, v23, v7

    move-wide/from16 v25, v13

    const v13, 0xfffff

    and-int/2addr v0, v13

    if-eq v0, v6, :cond_4

    if-eq v6, v13, :cond_3

    int-to-long v13, v6

    move-object/from16 v6, p1

    .line 9
    invoke-virtual {v10, v6, v13, v14, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p1

    :goto_3
    int-to-long v13, v0

    .line 10
    invoke-virtual {v10, v6, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v27, v0

    move v13, v5

    move-object v14, v6

    goto :goto_4

    :cond_4
    move-object/from16 v14, p1

    move v13, v5

    move/from16 v27, v6

    :goto_4
    const/4 v0, 0x5

    packed-switch v11, :pswitch_data_0

    move v6, v2

    move/from16 v11, v18

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne v8, v0, :cond_e

    .line 11
    invoke-direct {v15, v14, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    shl-int/lit8 v0, v11, 0x3

    or-int/lit8 v5, v0, 0x4

    .line 12
    invoke-direct {v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move v12, v6

    move/from16 p3, v24

    move-object/from16 v6, p6

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 14
    invoke-direct {v15, v14, v12, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v13, v7

    move/from16 v3, p3

    move/from16 v13, p4

    move v1, v11

    move v2, v12

    move/from16 v6, v27

    const/4 v8, -0x1

    move-object/from16 v12, p2

    goto/16 :goto_f

    :pswitch_0
    if-nez v8, :cond_5

    .line 15
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v6

    iget-wide v0, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(J)J

    move-result-wide v4

    move/from16 v11, v18

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v2

    move-wide/from16 v2, v25

    move/from16 p3, v6

    move/from16 v6, v24

    .line 17
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v13, v7

    move/from16 v0, p3

    move/from16 v13, p4

    move v3, v6

    move v2, v8

    move v1, v11

    goto/16 :goto_e

    :cond_5
    move/from16 v11, v18

    move v12, v2

    goto/16 :goto_a

    :pswitch_1
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    if-nez v8, :cond_8

    .line 18
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb(I)I

    move-result v1

    move-wide/from16 v2, v25

    .line 20
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v1, v13, v7

    move/from16 v13, p4

    move v2, v5

    move v3, v6

    move/from16 v6, v27

    const/4 v8, -0x1

    move v5, v1

    move v1, v11

    goto/16 :goto_f

    :pswitch_2
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    move-wide/from16 v0, v25

    if-nez v8, :cond_8

    .line 21
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget v3, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 22
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzA(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 23
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    .line 24
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;->zzj(ILjava/lang/Object;)V

    move v0, v2

    move v2, v5

    move v3, v6

    move v1, v11

    move v5, v13

    move/from16 v6, v27

    const/4 v8, -0x1

    move/from16 v13, p4

    goto/16 :goto_f

    .line 25
    :cond_7
    :goto_5
    invoke-virtual {v10, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_3
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    move-wide/from16 v0, v25

    if-ne v8, v4, :cond_8

    .line 26
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v2

    iget-object v3, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 27
    invoke-virtual {v10, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v0, v13, v7

    move/from16 v13, p4

    move v3, v6

    move v1, v11

    move/from16 v6, v27

    const/4 v8, -0x1

    move/from16 v11, p5

    move/from16 v33, v5

    move v5, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_0

    :cond_8
    move v12, v5

    move/from16 p3, v6

    goto/16 :goto_b

    :pswitch_4
    move v5, v2

    move/from16 v11, v18

    move/from16 v6, v24

    if-ne v8, v4, :cond_9

    .line 28
    invoke-direct {v15, v14, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 29
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v24, v6

    move v6, v5

    move-object/from16 v5, p6

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 31
    invoke-direct {v15, v14, v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_9
    move/from16 v24, v6

    move v12, v5

    goto/16 :goto_a

    :pswitch_5
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v28, v25

    if-ne v8, v4, :cond_d

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    .line 32
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_7

    .line 33
    :cond_a
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzh([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 34
    :goto_7
    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    move-wide/from16 v4, v28

    .line 35
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_6
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-nez v8, :cond_d

    .line 36
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v1, v1, v19

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    move/from16 v1, v16

    .line 37
    :goto_8
    invoke-static {v14, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_c

    :pswitch_7
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-ne v8, v0, :cond_d

    .line 38
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_8
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    const/4 v0, 0x1

    if-ne v8, v0, :cond_c

    .line 39
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v3

    move-wide v2, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_c

    :cond_c
    move v2, v0

    goto/16 :goto_10

    :pswitch_9
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-nez v8, :cond_d

    .line 40
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 41
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_c

    :pswitch_a
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-nez v8, :cond_d

    .line 42
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v8

    iget-wide v2, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v17, v2

    move-wide v2, v4

    move-wide/from16 v4, v17

    .line 43
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v13, v7

    move/from16 v13, p4

    move v2, v6

    move v0, v8

    goto :goto_d

    :pswitch_b
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    if-ne v8, v0, :cond_d

    .line 44
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 45
    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JF)V

    :goto_9
    add-int/lit8 v0, v3, 0x4

    goto :goto_c

    :cond_d
    move v12, v6

    :goto_a
    move/from16 p3, v24

    :goto_b
    const/4 v2, 0x1

    goto :goto_11

    :pswitch_c
    move v6, v2

    move/from16 v11, v18

    move-wide/from16 v4, v25

    const/4 v2, 0x1

    if-ne v8, v2, :cond_e

    .line 46
    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 47
    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzo(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    :goto_c
    or-int v5, v13, v7

    move/from16 v13, p4

    move v2, v6

    :goto_d
    move v1, v11

    move/from16 v3, v24

    :goto_e
    move/from16 v6, v27

    const/4 v8, -0x1

    :goto_f
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_e
    :goto_10
    move v12, v6

    move/from16 p3, v24

    :goto_11
    move/from16 v8, p3

    move/from16 v7, p5

    move/from16 v25, v2

    move-object/from16 v32, v10

    move/from16 v22, v11

    move/from16 v26, v12

    move/from16 v18, v13

    const/16 v21, -0x1

    goto/16 :goto_15

    :cond_f
    move v12, v2

    move-wide/from16 v30, v13

    move/from16 v13, v18

    move/from16 p3, v24

    const/4 v2, 0x1

    move-object/from16 v14, p1

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_13

    if-ne v8, v4, :cond_12

    move-wide/from16 v0, v30

    .line 48
    invoke-virtual {v10, v14, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    .line 49
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc()Z

    move-result v4

    if-nez v4, :cond_11

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_10

    const/16 v4, 0xa

    goto :goto_12

    :cond_10
    add-int/2addr v4, v4

    .line 51
    :goto_12
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v2

    .line 52
    invoke-virtual {v10, v14, v0, v1, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v7, v2

    .line 53
    invoke-direct {v15, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v18, v5

    move-object v5, v7

    move/from16 v27, v6

    move-object/from16 v6, p6

    .line 54
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move/from16 v3, p3

    move/from16 v11, p5

    move v2, v12

    move v1, v13

    move/from16 v5, v18

    move/from16 v6, v27

    const/4 v8, -0x1

    move-object/from16 v12, p2

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_12
    move/from16 v18, v5

    move/from16 v27, v6

    move/from16 v25, v2

    move v15, v3

    move-object/from16 v32, v10

    move/from16 v26, v12

    move/from16 v22, v13

    const/16 v21, -0x1

    goto/16 :goto_14

    :cond_13
    move/from16 v18, v5

    move/from16 v27, v6

    move-wide/from16 v23, v30

    const/16 v0, 0x31

    if-gt v11, v0, :cond_15

    int-to-long v6, v1

    move-object/from16 v0, p0

    move/from16 v25, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v3

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, p3

    move-wide/from16 v28, v6

    move v6, v13

    move v7, v8

    const/16 v21, -0x1

    move v8, v12

    move-object/from16 v32, v10

    move-wide/from16 v9, v28

    move/from16 v26, v12

    move/from16 v22, v13

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    .line 55
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_14

    :goto_13
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v3, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v5, v18

    move/from16 v8, v21

    move/from16 v1, v22

    move/from16 v2, v26

    move/from16 v6, v27

    move-object/from16 v10, v32

    goto/16 :goto_0

    :cond_14
    move/from16 v8, p3

    move/from16 v7, p5

    move v3, v0

    goto :goto_15

    :cond_15
    move/from16 v25, v2

    move v15, v3

    move-object/from16 v32, v10

    move/from16 v26, v12

    move/from16 v22, v13

    const/16 v21, -0x1

    const/16 v0, 0x32

    if-ne v11, v0, :cond_17

    if-ne v8, v4, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v26

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_13

    :cond_16
    :goto_14
    move/from16 v8, p3

    move/from16 v7, p5

    move v3, v15

    goto :goto_15

    :cond_17
    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, v22

    move v7, v8

    move v8, v9

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v26

    move-object/from16 v13, p6

    .line 57
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v15, :cond_14

    goto :goto_13

    :goto_15
    if-ne v8, v7, :cond_18

    if-eqz v7, :cond_18

    const v1, 0xfffff

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move v0, v3

    move v3, v8

    move/from16 v5, v18

    move/from16 v6, v27

    goto/16 :goto_1d

    :cond_18
    move-object/from16 v9, p0

    .line 58
    iget-boolean v0, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_1f

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;

    if-eq v0, v1, :cond_1e

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    move/from16 v11, v22

    .line 59
    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    if-nez v0, :cond_19

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v3

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto/16 :goto_1c

    :cond_19
    move-object/from16 v12, p1

    .line 62
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    .line 64
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    .line 65
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    if-eq v2, v4, :cond_1d

    .line 66
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object/from16 v13, p2

    goto/16 :goto_19

    :pswitch_d
    move-object/from16 v13, p2

    .line 67
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 68
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_19

    :pswitch_e
    move-object/from16 v13, p2

    .line 69
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 70
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_19

    .line 71
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move-object/from16 v13, p2

    .line 73
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    goto/16 :goto_1a

    :pswitch_11
    move-object/from16 v13, p2

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    .line 76
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 77
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    .line 78
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;Ljava/lang/Object;)V

    :cond_1a
    move-object v0, v4

    move-object v1, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_12
    move-object/from16 v13, p2

    shl-int/lit8 v2, v11, 0x3

    or-int/lit8 v5, v2, 0x4

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    .line 82
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    .line 83
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zze()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    .line 84
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;Ljava/lang/Object;)V

    :cond_1b
    move-object v0, v4

    move-object v1, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_13
    move-object/from16 v13, p2

    .line 86
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget-object v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    goto/16 :goto_1a

    :pswitch_14
    move-object/from16 v13, p2

    .line 87
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    cmp-long v2, v4, v19

    if-eqz v2, :cond_1c

    goto :goto_16

    :cond_1c
    move/from16 v25, v16

    .line 88
    :goto_16
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_19

    :pswitch_15
    move-object/from16 v13, p2

    .line 89
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_17

    :pswitch_16
    move-object/from16 v13, p2

    .line 90
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_18

    :pswitch_17
    move-object/from16 v13, p2

    .line 91
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget v2, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_19

    :pswitch_18
    move-object/from16 v13, p2

    .line 93
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v3

    iget-wide v4, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_19

    :pswitch_19
    move-object/from16 v13, p2

    .line 95
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    :goto_17
    add-int/lit8 v3, v3, 0x4

    goto :goto_19

    :pswitch_1a
    move-object/from16 v13, p2

    .line 97
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    :goto_18
    add-int/lit8 v3, v3, 0x8

    :goto_19
    move-object/from16 v2, v17

    .line 99
    :goto_1a
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzea;

    .line 100
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzi(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzds;Ljava/lang/Object;)V

    move v0, v3

    goto :goto_1c

    :cond_1d
    move-object/from16 v13, p2

    .line 101
    invoke-static {v13, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    .line 102
    throw v17

    :cond_1e
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_1b

    :cond_1f
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v10, p6

    :goto_1b
    move/from16 v11, v22

    .line 103
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move v2, v3

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    :goto_1c
    move v3, v8

    move-object v15, v9

    move-object v9, v10

    move v1, v11

    move-object v14, v12

    move-object v12, v13

    move/from16 v5, v18

    move/from16 v8, v21

    move/from16 v2, v26

    move/from16 v6, v27

    move-object/from16 v10, v32

    move/from16 v13, p4

    move v11, v7

    goto/16 :goto_0

    :cond_20
    move/from16 v18, v5

    move/from16 v27, v6

    move-object/from16 v32, v10

    move v7, v11

    move-object v12, v14

    move-object v9, v15

    const v1, 0xfffff

    :goto_1d
    if-eq v6, v1, :cond_21

    int-to-long v10, v6

    move-object/from16 v2, v32

    .line 105
    invoke-virtual {v2, v12, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    iget v2, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzk:I

    :goto_1e
    iget v4, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzl:I

    if-ge v2, v4, :cond_24

    iget-object v4, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzj:[I

    .line 106
    aget v4, v4, v2

    iget-object v5, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 107
    aget v5, v5, v4

    .line 108
    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v5

    and-int/2addr v5, v1

    int-to-long v5, v5

    .line 109
    invoke-static {v12, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_22

    goto :goto_1f

    .line 110
    :cond_22
    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzA(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object v6

    if-nez v6, :cond_23

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 111
    :cond_23
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    .line 112
    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    .line 113
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;

    .line 114
    throw v17

    :cond_24
    if-nez v7, :cond_26

    move/from16 v1, p4

    if-ne v0, v1, :cond_25

    goto :goto_20

    .line 115
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_26
    move/from16 v1, p4

    if-gt v0, v1, :cond_27

    if-ne v3, v7, :cond_27

    :goto_20
    return v0

    .line 116
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final zze()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzJ()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzS(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    const v2, 0x7fffffff

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzV(I)V

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzck;->zzb:I

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzT()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 6
    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 9
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 10
    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;->zzc()V

    .line 11
    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zza(Ljava/lang/Object;J)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 14
    aget v2, v2, v1

    .line 15
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzf(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzg(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zze(Ljava/lang/Object;)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzG(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 2
    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 4
    aget v3, v3, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v1

    int-to-long v4, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 6
    :pswitch_1
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzI(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 10
    :pswitch_3
    invoke-direct {p0, p2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzK(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zza:I

    .line 14
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;

    .line 17
    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfc;->zzb(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 19
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzr(Ljava/lang/Object;JJ)V

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 22
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 25
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzr(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 28
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 31
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 34
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 40
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzH(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 41
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 44
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzm(Ljava/lang/Object;JZ)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 47
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 50
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzr(Ljava/lang/Object;JJ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 53
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzq(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 56
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzr(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 59
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzr(Ljava/lang/Object;JJ)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 62
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v4, v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JF)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    goto :goto_1

    .line 65
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzo(Ljava/lang/Object;JD)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzJ(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 68
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzD(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 69
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzC(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 p0, 0x0

    .line 70
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    .line 1
    iget-boolean v0, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    if-eqz v0, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzG(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    move v7, v8

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    :goto_0
    if-ge v0, v13, :cond_14

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzk(I[BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 4
    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzu(II)I

    move-result v0

    goto :goto_2

    .line 5
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzt(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v23, v5

    move-object/from16 v29, v9

    move/from16 v18, v10

    move/from16 v15, v16

    goto/16 :goto_12

    :cond_2
    and-int/lit8 v3, v17, 0x7

    .line 6
    iget-object v0, v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    .line 7
    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v13

    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v13, v10, :cond_b

    add-int/lit8 v10, v2, 0x2

    .line 8
    aget v0, v0, v10

    ushr-int/lit8 v10, v0, 0x14

    const/4 v5, 0x1

    shl-int v10, v5, v10

    const v15, 0xfffff

    and-int/2addr v0, v15

    move/from16 v22, v1

    move/from16 v20, v2

    if-eq v0, v7, :cond_5

    if-eq v7, v15, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v19

    .line 9
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, v19

    :goto_3
    if-eq v0, v15, :cond_4

    int-to-long v1, v0

    .line 10
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    :cond_4
    move-object v2, v7

    move v7, v0

    goto :goto_4

    :cond_5
    move-object/from16 v2, v19

    :goto_4
    const/4 v0, 0x5

    packed-switch v13, :pswitch_data_0

    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    goto/16 :goto_d

    :pswitch_0
    if-nez v3, :cond_6

    .line 11
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v13

    iget-wide v0, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzc(J)J

    move-result-wide v4

    move-object v0, v2

    move-object/from16 v1, p1

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    move-wide v2, v8

    move/from16 v23, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int/2addr v6, v10

    move-object v9, v7

    move v0, v13

    move v2, v15

    move/from16 v7, v20

    move/from16 v1, v23

    const v8, 0xfffff

    const/4 v10, -0x1

    move-object/from16 v15, p0

    goto/16 :goto_c

    :cond_6
    move/from16 v23, p3

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    goto/16 :goto_6

    :pswitch_1
    move/from16 v23, p3

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_7

    .line 14
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzb(I)I

    move-result v1

    .line 16
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_2
    move/from16 v23, p3

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_7

    .line 17
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 18
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_5

    :pswitch_3
    move/from16 v23, p3

    move/from16 v15, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    .line 19
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zza([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 20
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    or-int/2addr v6, v10

    move/from16 v13, p4

    move-object v9, v7

    move v2, v15

    move/from16 v7, v20

    move/from16 v1, v23

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_14

    :pswitch_4
    move/from16 v23, p3

    move/from16 v15, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    const v19, 0xfffff

    move-object/from16 v13, p0

    .line 21
    invoke-direct {v13, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzD(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 22
    invoke-direct {v13, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 24
    invoke-direct {v13, v14, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzL(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_7
    :goto_6
    const v19, 0xfffff

    move-object/from16 v13, p0

    goto/16 :goto_d

    :pswitch_5
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_a

    const/high16 v0, 0x20000000

    and-int v0, v22, v0

    if-nez v0, :cond_8

    .line 25
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzg([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    goto :goto_7

    .line 26
    :cond_8
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzh([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    .line 27
    :goto_7
    iget-object v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzc:Ljava/lang/Object;

    .line 28
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_a

    .line 29
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v5, v16

    .line 30
    :goto_8
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzm(Ljava/lang/Object;JZ)V

    goto/16 :goto_a

    :pswitch_7
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_a

    .line 31
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_8
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v5, :cond_a

    .line 32
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v21

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_a

    :pswitch_9
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_a

    .line 33
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzj([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zza:I

    .line 34
    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_a
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_a

    .line 35
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzm([BILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;->zzb:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 36
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int/2addr v6, v10

    move-object v9, v7

    move v2, v15

    move/from16 v0, v17

    goto :goto_b

    :pswitch_b
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_a

    .line 37
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzb([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 38
    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzp(Ljava/lang/Object;JF)V

    :goto_9
    add-int/lit8 v0, v4, 0x4

    goto :goto_a

    :pswitch_c
    move-object/from16 v13, p0

    move/from16 v23, p3

    move/from16 v19, v15

    move/from16 v15, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v5, :cond_a

    .line 39
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzq([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 40
    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzo(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_a
    or-int/2addr v6, v10

    move-object v9, v7

    move v2, v15

    :goto_b
    move/from16 v8, v19

    move/from16 v7, v20

    move/from16 v1, v23

    const/4 v10, -0x1

    move-object v15, v13

    :goto_c
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_a
    :goto_d
    move v2, v4

    move-object/from16 v29, v7

    move/from16 v7, v20

    const/16 v18, -0x1

    goto/16 :goto_12

    :cond_b
    move/from16 v23, p3

    move/from16 v22, v1

    move/from16 v20, v7

    move-object v10, v15

    move-object/from16 v7, v19

    const v19, 0xfffff

    move v15, v2

    const/16 v0, 0x1b

    if-ne v13, v0, :cond_f

    const/4 v0, 0x2

    if-ne v3, v0, :cond_e

    .line 41
    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    .line 42
    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzc()Z

    move-result v1

    if-nez v1, :cond_d

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xa

    goto :goto_e

    :cond_c
    add-int/2addr v1, v1

    .line 44
    :goto_e
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v0

    .line 45
    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_d
    move-object v5, v0

    .line 46
    invoke-direct {v10, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    .line 47
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move/from16 v13, p4

    move-object v9, v7

    move v6, v8

    move v2, v15

    move/from16 v8, v19

    move/from16 v7, v20

    move/from16 v1, v23

    move-object v15, v10

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_e
    move v14, v4

    move/from16 v25, v6

    move-object/from16 v29, v7

    move/from16 v26, v20

    const/16 v18, -0x1

    goto/16 :goto_10

    :cond_f
    const/16 v0, 0x31

    if-gt v13, v0, :cond_11

    move/from16 v1, v22

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v5, v3

    move v3, v4

    move/from16 v24, v4

    move/from16 v4, p4

    move/from16 p3, v5

    move/from16 v5, v17

    move/from16 v25, v6

    move/from16 v6, v23

    move/from16 v26, v20

    move-object/from16 v20, v7

    move/from16 v7, p3

    move-wide/from16 v27, v8

    move/from16 v9, v19

    move v8, v15

    move-object/from16 v29, v20

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move v11, v13

    move-wide/from16 v12, v27

    move-object/from16 v14, p5

    .line 48
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzs(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move/from16 v14, v24

    if-eq v0, v14, :cond_10

    :goto_f
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move v2, v15

    move/from16 v10, v18

    move/from16 v1, v23

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_13

    :cond_10
    move v2, v0

    goto :goto_11

    :cond_11
    move/from16 p3, v3

    move v14, v4

    move/from16 v25, v6

    move-object/from16 v29, v7

    move-wide/from16 v27, v8

    move/from16 v26, v20

    move/from16 v1, v22

    const/16 v18, -0x1

    const/16 v0, 0x32

    if-ne v13, v0, :cond_13

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move v5, v15

    move-wide/from16 v6, v27

    move-object/from16 v8, p5

    .line 49
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzq(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v14, :cond_10

    goto :goto_f

    :cond_12
    :goto_10
    move v2, v14

    :goto_11
    move/from16 v6, v25

    move/from16 v7, v26

    goto :goto_12

    :cond_13
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v23

    move v9, v13

    move-wide/from16 v10, v27

    move v12, v15

    move-object/from16 v13, p5

    .line 50
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzr(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    if-eq v0, v14, :cond_10

    goto :goto_f

    .line 51
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcp;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgz;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move v2, v15

    move/from16 v10, v18

    move/from16 v1, v23

    :goto_13
    move-object/from16 v9, v29

    const v8, 0xfffff

    :goto_14
    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_14
    move/from16 v25, v6

    move v1, v8

    move-object/from16 v29, v9

    if-eq v7, v1, :cond_15

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v25

    move-object/from16 v4, v29

    .line 53
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_15
    move/from16 v4, p4

    if-ne v0, v4, :cond_16

    return-void

    .line 54
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;

    move-result-object v0

    throw v0

    :cond_17
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 55
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzco;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzi:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xfffff

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v3

    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;

    .line 2
    invoke-virtual {v8}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzf()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 5
    array-length v9, v9

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_4

    .line 6
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 7
    aget v12, v12, v10

    :goto_2
    if-eqz v8, :cond_2

    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 8
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zza(Ljava/util/Map$Entry;)I

    move-result v13

    if-gt v13, v12, :cond_2

    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 9
    invoke-virtual {v13, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Ljava/util/Map$Entry;)V

    .line 10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_3

    .line 11
    :pswitch_0
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 12
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 13
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    .line 14
    invoke-interface {v2, v12, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_3

    .line 15
    :pswitch_1
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 16
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzD(IJ)V

    goto/16 :goto_3

    .line 17
    :pswitch_2
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 18
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzB(II)V

    goto/16 :goto_3

    .line 19
    :pswitch_3
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 20
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzz(IJ)V

    goto/16 :goto_3

    .line 21
    :pswitch_4
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 22
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzx(II)V

    goto/16 :goto_3

    .line 23
    :pswitch_5
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 24
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi(II)V

    goto/16 :goto_3

    .line 25
    :pswitch_6
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 26
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzI(II)V

    goto/16 :goto_3

    .line 27
    :pswitch_7
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 28
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 29
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_3

    .line 30
    :pswitch_8
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 31
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 32
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    invoke-interface {v2, v12, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_3

    .line 33
    :pswitch_9
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 34
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_3

    .line 35
    :pswitch_a
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 36
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzU(Ljava/lang/Object;J)Z

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzb(IZ)V

    goto/16 :goto_3

    .line 37
    :pswitch_b
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 38
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzk(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_c
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 40
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzm(IJ)V

    goto/16 :goto_3

    .line 41
    :pswitch_d
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 42
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzr(II)V

    goto/16 :goto_3

    .line 43
    :pswitch_e
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 44
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzK(IJ)V

    goto/16 :goto_3

    .line 45
    :pswitch_f
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 46
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzt(IJ)V

    goto/16 :goto_3

    .line 47
    :pswitch_10
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 48
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn(Ljava/lang/Object;J)F

    move-result v11

    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzo(IF)V

    goto/16 :goto_3

    .line 49
    :pswitch_11
    invoke-direct {v0, v1, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 50
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzf(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 51
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v2, v12, v11, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzN(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 52
    :pswitch_13
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 53
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 54
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 55
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    .line 56
    invoke-static {v12, v11, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_3

    .line 57
    :pswitch_14
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 58
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 59
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 60
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 61
    :pswitch_15
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 62
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 63
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 64
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 65
    :pswitch_16
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 66
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 67
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 68
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 69
    :pswitch_17
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 70
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 71
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 72
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 73
    :pswitch_18
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 74
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 75
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 76
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 77
    :pswitch_19
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 78
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 79
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 80
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 81
    :pswitch_1a
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 82
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 83
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 84
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 85
    :pswitch_1b
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 86
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 87
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 88
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 89
    :pswitch_1c
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 90
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 91
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 92
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 93
    :pswitch_1d
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 94
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 95
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 96
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 97
    :pswitch_1e
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 98
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 99
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 100
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 101
    :pswitch_1f
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 102
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 103
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 104
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 105
    :pswitch_20
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 106
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 107
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 108
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 109
    :pswitch_21
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 110
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 111
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 112
    invoke-static {v12, v11, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 113
    :pswitch_22
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 114
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 115
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 116
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 117
    :pswitch_23
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 118
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 119
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 120
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 121
    :pswitch_24
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 122
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 123
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 124
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 125
    :pswitch_25
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 126
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 127
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 128
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 129
    :pswitch_26
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 130
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 131
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 132
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 133
    :pswitch_27
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 134
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 135
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 136
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 137
    :pswitch_28
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 138
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 139
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 140
    invoke-static {v12, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_3

    .line 141
    :pswitch_29
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 142
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 143
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 144
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    .line 145
    invoke-static {v12, v11, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_3

    .line 146
    :pswitch_2a
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 147
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 148
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 149
    invoke-static {v12, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_3

    .line 150
    :pswitch_2b
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 151
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 152
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 153
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 154
    :pswitch_2c
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 155
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 156
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 157
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 158
    :pswitch_2d
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 159
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 160
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 161
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 162
    :pswitch_2e
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 163
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 164
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 165
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 166
    :pswitch_2f
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 167
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 168
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 169
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 170
    :pswitch_30
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 171
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 172
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 173
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 174
    :pswitch_31
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 175
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 176
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 177
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 178
    :pswitch_32
    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 179
    aget v12, v12, v10

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 180
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 181
    invoke-static {v12, v11, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_3

    .line 182
    :pswitch_33
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 183
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 184
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    .line 185
    invoke-interface {v2, v12, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_3

    .line 186
    :pswitch_34
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 187
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 188
    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzD(IJ)V

    goto/16 :goto_3

    .line 189
    :pswitch_35
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 190
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v11

    .line 191
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzB(II)V

    goto/16 :goto_3

    .line 192
    :pswitch_36
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 193
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 194
    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzz(IJ)V

    goto/16 :goto_3

    .line 195
    :pswitch_37
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 196
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v11

    .line 197
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzx(II)V

    goto/16 :goto_3

    .line 198
    :pswitch_38
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 199
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v11

    .line 200
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi(II)V

    goto/16 :goto_3

    .line 201
    :pswitch_39
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 202
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v11

    .line 203
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzI(II)V

    goto/16 :goto_3

    .line 204
    :pswitch_3a
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 205
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    .line 206
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_3

    .line 207
    :pswitch_3b
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 208
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    .line 209
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v13

    invoke-interface {v2, v12, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_3

    .line 210
    :pswitch_3c
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 211
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_3

    .line 212
    :pswitch_3d
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 213
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(Ljava/lang/Object;J)Z

    move-result v11

    .line 214
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzb(IZ)V

    goto/16 :goto_3

    .line 215
    :pswitch_3e
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 216
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v11

    .line 217
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzk(II)V

    goto :goto_3

    .line 218
    :pswitch_3f
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 219
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 220
    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzm(IJ)V

    goto :goto_3

    .line 221
    :pswitch_40
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 222
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v11

    .line 223
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzr(II)V

    goto :goto_3

    .line 224
    :pswitch_41
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 225
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 226
    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzK(IJ)V

    goto :goto_3

    .line 227
    :pswitch_42
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 228
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 229
    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzt(IJ)V

    goto :goto_3

    .line 230
    :pswitch_43
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 231
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(Ljava/lang/Object;J)F

    move-result v11

    .line 232
    invoke-interface {v2, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzo(IF)V

    goto :goto_3

    .line 233
    :pswitch_44
    invoke-direct {v0, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzP(Ljava/lang/Object;I)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int/2addr v11, v7

    int-to-long v13, v11

    .line 234
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 235
    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzf(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v8, :cond_6

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 236
    invoke-virtual {v5, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Ljava/util/Map$Entry;)V

    .line 237
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    return-void

    :cond_7
    iget-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 239
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v3

    iget-object v8, v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgu;

    .line 240
    invoke-virtual {v8}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 241
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzf()Ljava/util/Iterator;

    move-result-object v3

    .line 242
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_5
    iget-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 243
    array-length v9, v9

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    move v11, v6

    move v13, v11

    move v12, v7

    :goto_6
    if-ge v11, v9, :cond_f

    .line 244
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v14

    iget-object v15, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 245
    aget v4, v15, v11

    invoke-static {v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v6

    const/16 v5, 0x11

    if-gt v6, v5, :cond_a

    add-int/lit8 v5, v11, 0x2

    .line 246
    aget v5, v15, v5

    and-int v15, v5, v7

    if-eq v15, v12, :cond_9

    int-to-long v12, v15

    .line 247
    invoke-virtual {v10, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v13

    move v12, v15

    :cond_9
    ushr-int/lit8 v5, v5, 0x14

    const/4 v15, 0x1

    shl-int v5, v15, v5

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    if-eqz v8, :cond_c

    iget-object v15, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 248
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zza(Ljava/util/Map$Entry;)I

    move-result v15

    if-gt v15, v4, :cond_c

    iget-object v15, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 249
    invoke-virtual {v15, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Ljava/util/Map$Entry;)V

    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    and-int/2addr v14, v7

    int-to-long v14, v14

    packed-switch v6, :pswitch_data_1

    :cond_d
    :goto_8
    const/4 v6, 0x1

    :goto_9
    const/16 v16, 0x0

    goto/16 :goto_c

    .line 251
    :pswitch_45
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 252
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v6

    .line 253
    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto :goto_8

    .line 254
    :pswitch_46
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 255
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzD(IJ)V

    goto :goto_8

    .line 256
    :pswitch_47
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 257
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzB(II)V

    goto :goto_8

    .line 258
    :pswitch_48
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 259
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzz(IJ)V

    goto :goto_8

    .line 260
    :pswitch_49
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 261
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzx(II)V

    goto :goto_8

    .line 262
    :pswitch_4a
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 263
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi(II)V

    goto :goto_8

    .line 264
    :pswitch_4b
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 265
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzI(II)V

    goto :goto_8

    .line 266
    :pswitch_4c
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 267
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto :goto_8

    .line 268
    :pswitch_4d
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 269
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 270
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v6

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_8

    .line 271
    :pswitch_4e
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 272
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_8

    .line 273
    :pswitch_4f
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 274
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzU(Ljava/lang/Object;J)Z

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzb(IZ)V

    goto/16 :goto_8

    .line 275
    :pswitch_50
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 276
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzk(II)V

    goto/16 :goto_8

    .line 277
    :pswitch_51
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 278
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzm(IJ)V

    goto/16 :goto_8

    .line 279
    :pswitch_52
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 280
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzp(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzr(II)V

    goto/16 :goto_8

    .line 281
    :pswitch_53
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 282
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzK(IJ)V

    goto/16 :goto_8

    .line 283
    :pswitch_54
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 284
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzz(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzt(IJ)V

    goto/16 :goto_8

    .line 285
    :pswitch_55
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 286
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn(Ljava/lang/Object;J)F

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzo(IF)V

    goto/16 :goto_8

    .line 287
    :pswitch_56
    invoke-direct {v0, v1, v4, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 288
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzm(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzf(ID)V

    goto/16 :goto_8

    .line 289
    :pswitch_57
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzN(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 290
    :pswitch_58
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 291
    aget v4, v4, v11

    .line 292
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 293
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v6

    .line 294
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzM(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_8

    .line 295
    :pswitch_59
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 296
    aget v4, v4, v11

    .line 297
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x1

    .line 298
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_5a
    const/4 v6, 0x1

    .line 299
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 300
    aget v4, v4, v11

    .line 301
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 302
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_5b
    const/4 v6, 0x1

    .line 303
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 304
    aget v4, v4, v11

    .line 305
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 306
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_5c
    const/4 v6, 0x1

    .line 307
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 308
    aget v4, v4, v11

    .line 309
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 310
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_5d
    const/4 v6, 0x1

    .line 311
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 312
    aget v4, v4, v11

    .line 313
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 314
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_5e
    const/4 v6, 0x1

    .line 315
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 316
    aget v4, v4, v11

    .line 317
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 318
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_5f
    const/4 v6, 0x1

    .line 319
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 320
    aget v4, v4, v11

    .line 321
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 322
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_60
    const/4 v6, 0x1

    .line 323
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 324
    aget v4, v4, v11

    .line 325
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 326
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_61
    const/4 v6, 0x1

    .line 327
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 328
    aget v4, v4, v11

    .line 329
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 330
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_62
    const/4 v6, 0x1

    .line 331
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 332
    aget v4, v4, v11

    .line 333
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 334
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_63
    const/4 v6, 0x1

    .line 335
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 336
    aget v4, v4, v11

    .line 337
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 338
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_64
    const/4 v6, 0x1

    .line 339
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 340
    aget v4, v4, v11

    .line 341
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 342
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_65
    const/4 v6, 0x1

    .line 343
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 344
    aget v4, v4, v11

    .line 345
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 346
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_66
    const/4 v6, 0x1

    .line 347
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 348
    aget v4, v4, v11

    .line 349
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 350
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_9

    :pswitch_67
    const/4 v6, 0x1

    .line 351
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 352
    aget v4, v4, v11

    .line 353
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v14, 0x0

    .line 354
    invoke-static {v4, v5, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzT(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_a

    :pswitch_68
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 355
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 356
    aget v5, v5, v11

    .line 357
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 358
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzS(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_b

    :pswitch_69
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 359
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 360
    aget v5, v5, v11

    .line 361
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 362
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzR(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_b

    :pswitch_6a
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 363
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 364
    aget v5, v5, v11

    .line 365
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 366
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzQ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_b

    :pswitch_6b
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 367
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 368
    aget v5, v5, v11

    .line 369
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 370
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzI(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_b

    :pswitch_6c
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 371
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 372
    aget v5, v5, v11

    .line 373
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 374
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzV(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto/16 :goto_b

    :pswitch_6d
    const/4 v6, 0x1

    .line 375
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 376
    aget v4, v4, v11

    .line 377
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 378
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzG(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_9

    :pswitch_6e
    const/4 v6, 0x1

    .line 379
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 380
    aget v4, v4, v11

    .line 381
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 382
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v14

    .line 383
    invoke-static {v4, v5, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzP(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_9

    :pswitch_6f
    const/4 v6, 0x1

    .line 384
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 385
    aget v4, v4, v11

    .line 386
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 387
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzU(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_9

    :pswitch_70
    const/4 v6, 0x1

    .line 388
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 389
    aget v4, v4, v11

    .line 390
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v14, 0x0

    .line 391
    invoke-static {v4, v5, v2, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzF(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    :goto_a
    move/from16 v16, v14

    goto/16 :goto_c

    :pswitch_71
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 392
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 393
    aget v5, v5, v11

    .line 394
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 395
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzJ(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto :goto_b

    :pswitch_72
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 396
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 397
    aget v5, v5, v11

    .line 398
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 399
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzK(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto :goto_b

    :pswitch_73
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 400
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 401
    aget v5, v5, v11

    .line 402
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 403
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzN(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto :goto_b

    :pswitch_74
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 404
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 405
    aget v5, v5, v11

    .line 406
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 407
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzW(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto :goto_b

    :pswitch_75
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 408
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 409
    aget v5, v5, v11

    .line 410
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 411
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzO(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto :goto_b

    :pswitch_76
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 412
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 413
    aget v5, v5, v11

    .line 414
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 415
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzL(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    goto :goto_b

    :pswitch_77
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 416
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 417
    aget v5, v5, v11

    .line 418
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 419
    invoke-static {v5, v14, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzH(ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Z)V

    :goto_b
    move/from16 v16, v4

    goto/16 :goto_c

    :pswitch_78
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 420
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v14

    .line 421
    invoke-interface {v2, v4, v5, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_c

    :pswitch_79
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 422
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-interface {v2, v4, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzD(IJ)V

    goto/16 :goto_c

    :pswitch_7a
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 423
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzB(II)V

    goto/16 :goto_c

    :pswitch_7b
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 424
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-interface {v2, v4, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzz(IJ)V

    goto/16 :goto_c

    :pswitch_7c
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 425
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzx(II)V

    goto/16 :goto_c

    :pswitch_7d
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 426
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzi(II)V

    goto/16 :goto_c

    :pswitch_7e
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 427
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzI(II)V

    goto/16 :goto_c

    :pswitch_7f
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 428
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzd(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;)V

    goto/16 :goto_c

    :pswitch_80
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 429
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 430
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v14

    invoke-interface {v2, v4, v5, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)V

    goto/16 :goto_c

    :pswitch_81
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 431
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzV(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    goto/16 :goto_c

    :pswitch_82
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 432
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(Ljava/lang/Object;J)Z

    move-result v5

    .line 433
    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzb(IZ)V

    goto :goto_c

    :pswitch_83
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 434
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzk(II)V

    goto :goto_c

    :pswitch_84
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 435
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-interface {v2, v4, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzm(IJ)V

    goto :goto_c

    :pswitch_85
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 436
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzr(II)V

    goto :goto_c

    :pswitch_86
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 437
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-interface {v2, v4, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzK(IJ)V

    goto :goto_c

    :pswitch_87
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 438
    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    invoke-interface {v2, v4, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzt(IJ)V

    goto :goto_c

    :pswitch_88
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 439
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(Ljava/lang/Object;J)F

    move-result v5

    .line 440
    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzo(IF)V

    goto :goto_c

    :pswitch_89
    const/4 v6, 0x1

    const/16 v16, 0x0

    and-int/2addr v5, v13

    if-eqz v5, :cond_e

    .line 441
    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(Ljava/lang/Object;J)D

    move-result-wide v14

    .line 442
    invoke-interface {v2, v4, v14, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;->zzf(ID)V

    :cond_e
    :goto_c
    add-int/lit8 v11, v11, 0x3

    move v5, v6

    move/from16 v6, v16

    goto/16 :goto_6

    :cond_f
    :goto_d
    if-eqz v8, :cond_11

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 443
    invoke-virtual {v4, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;Ljava/util/Map$Entry;)V

    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    goto :goto_d

    :cond_11
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 445
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhq;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzv(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v7

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 6
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 15
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 17
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 19
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 21
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 23
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 25
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 27
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 30
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 33
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgj;->zzX(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 36
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzw(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 38
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 40
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 42
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzc(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 44
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 46
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzd(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    .line 48
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 50
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzb(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 51
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzO(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 53
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zza(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;

    .line 55
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgy;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 57
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 58
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    .line 1
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzk:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzj:[I

    aget v11, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    .line 2
    aget v12, v2, v11

    .line 3
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzy(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzc:[I

    add-int/lit8 v4, v11, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzQ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v9

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzx(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 10
    :cond_5
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzC(I)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfh;

    const/4 v0, 0x0

    .line 12
    throw v0

    .line 13
    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzT(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 14
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_7
    and-int v0, v13, v8

    int-to-long v0, v0

    .line 15
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzhi;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 17
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v1

    move v2, v9

    .line 18
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 20
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzQ(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzB(I)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzR(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgh;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzh:Z

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;

    .line 23
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdt;->zzk()Z

    move-result v0

    if-nez v0, :cond_c

    return v9

    :cond_c
    return v3
.end method
