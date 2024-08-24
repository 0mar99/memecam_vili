.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "com.google.mlkit:barcode-scanning@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

.field public static final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

.field public static final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;


# instance fields
.field public zzf:I

.field public zzg:Ljava/lang/String;

.field public zzh:Ljava/lang/String;

.field public zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

.field public zzj:Ljava/lang/String;

.field public zzk:Ljava/lang/String;

.field public zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzy;

.field public zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

.field public zzn:B


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzek;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzkc;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    .line 4
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;

    const-class v8, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    const/4 v5, 0x0

    const v6, 0x12660614

    move-object v3, v4

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzH(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeg;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzho;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzn:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzh:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzN()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzej;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    return-object v0
.end method


# virtual methods
.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    .line 1
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzn:B

    return-object v3

    .line 2
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzah;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaf;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;-><init>()V

    return-object p0

    :cond_4
    const/16 p0, 0x9

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "zzf"

    aput-object p1, p0, v0

    const-string p1, "zzg"

    aput-object p1, p0, p3

    const-string p1, "zzh"

    aput-object p1, p0, v4

    const-string p1, "zzi"

    aput-object p1, p0, v3

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzai;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    aput-object p1, p0, v2

    const-string p1, "zzj"

    aput-object p1, p0, v1

    const/4 p1, 0x6

    const-string p2, "zzk"

    aput-object p2, p0, p1

    const/4 p1, 0x7

    const-string p2, "zzm"

    aput-object p2, p0, p1

    const/16 p1, 0x8

    const-string p2, "zzl"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u01f4\u0007\u0000\u0001\u0002\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u001e\u0005\u1008\u0002\u0006\u1008\u0003\u000f\u1409\u0005\u01f4\u1009\u0004"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzR(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaj;->zzn:B

    .line 6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
