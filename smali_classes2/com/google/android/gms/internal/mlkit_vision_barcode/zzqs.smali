.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdi;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final enum zzp:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

.field public static final synthetic zzq:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;


# instance fields
.field public final zzr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v1, 0x0

    const-string v2, "UNRECOGNIZED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v2, 0x1

    const-string v3, "CODE_128"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v3, 0x2

    const-string v4, "CODE_39"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v4, 0x3

    const-string v5, "CODE_93"

    .line 4
    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v5, 0x4

    const-string v6, "CODABAR"

    .line 5
    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v6, 0x5

    const-string v7, "DATA_MATRIX"

    .line 6
    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v7, 0x6

    const-string v8, "EAN_13"

    .line 7
    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/4 v8, 0x7

    const-string v9, "EAN_8"

    .line 8
    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v9, 0x8

    const-string v10, "ITF"

    .line 9
    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v10, 0x9

    const-string v11, "QR_CODE"

    .line 10
    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v11, 0xa

    const-string v12, "UPC_A"

    .line 11
    invoke-direct {v0, v12, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v12, 0xb

    const-string v13, "UPC_E"

    .line 12
    invoke-direct {v0, v13, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v13, 0xc

    const-string v14, "PDF417"

    .line 13
    invoke-direct {v0, v14, v13, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v14, 0xd

    const-string v15, "AZTEC"

    .line 14
    invoke-direct {v0, v15, v14, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v15, 0xe

    const-string v14, "DATABAR"

    .line 15
    invoke-direct {v0, v14, v15, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v14, 0x10

    const/16 v15, 0xf

    const-string v13, "TEZ_CODE"

    .line 16
    invoke-direct {v0, v13, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzp:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    new-array v13, v14, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v14, v13, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v4

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v5

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v6

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v7

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v8

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v9

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v10

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v11

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    aput-object v1, v13, v12

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    aput-object v0, v13, v15

    sput-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzq:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzr:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzq:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqs;->zzr:I

    return p0
.end method
