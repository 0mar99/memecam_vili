.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdi;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final enum zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

.field public static final synthetic zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;


# instance fields
.field public final zzp:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v1, 0x0

    const-string v2, "FORMAT_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v2, 0x1

    const-string v3, "FORMAT_CODE_128"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v3, 0x2

    const-string v4, "FORMAT_CODE_39"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "FORMAT_CODE_93"

    .line 4
    invoke-direct {v0, v6, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v6, 0x8

    const-string v7, "FORMAT_CODABAR"

    .line 5
    invoke-direct {v0, v7, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v7, 0x5

    const-string v8, "FORMAT_DATA_MATRIX"

    const/16 v9, 0x10

    .line 6
    invoke-direct {v0, v8, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v8, 0x6

    const-string v9, "FORMAT_EAN_13"

    const/16 v10, 0x20

    .line 7
    invoke-direct {v0, v9, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/4 v9, 0x7

    const-string v10, "FORMAT_EAN_8"

    const/16 v11, 0x40

    .line 8
    invoke-direct {v0, v10, v9, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const-string v10, "FORMAT_ITF"

    const/16 v11, 0x80

    .line 9
    invoke-direct {v0, v10, v6, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v10, 0x9

    const-string v11, "FORMAT_QR_CODE"

    const/16 v12, 0x100

    .line 10
    invoke-direct {v0, v11, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v11, 0xa

    const-string v12, "FORMAT_UPC_A"

    const/16 v13, 0x200

    .line 11
    invoke-direct {v0, v12, v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v12, 0xb

    const-string v13, "FORMAT_UPC_E"

    const/16 v14, 0x400

    .line 12
    invoke-direct {v0, v13, v12, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v13, 0xc

    const-string v14, "FORMAT_PDF417"

    const/16 v15, 0x800

    .line 13
    invoke-direct {v0, v14, v13, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v14, 0xd

    const-string v15, "FORMAT_AZTEC"

    const/16 v13, 0x1000

    .line 14
    invoke-direct {v0, v15, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v13, 0xe

    new-array v13, v13, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v15, v13, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v4

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v5

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v7

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v8

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v9

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v6

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v10

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v11

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    aput-object v1, v13, v12

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzp:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzo:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zzp:I

    return p0
.end method
