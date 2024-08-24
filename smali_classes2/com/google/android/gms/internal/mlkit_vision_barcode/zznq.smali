.class public final enum Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdi;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

.field public static final synthetic zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;


# instance fields
.field public final zzo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v1, 0x0

    const-string v2, "TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v2, 0x1

    const-string v3, "TYPE_CONTACT_INFO"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v3, 0x2

    const-string v4, "TYPE_EMAIL"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v4, 0x3

    const-string v5, "TYPE_ISBN"

    .line 4
    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v5, 0x4

    const-string v6, "TYPE_PHONE"

    .line 5
    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v6, 0x5

    const-string v7, "TYPE_PRODUCT"

    .line 6
    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v7, 0x6

    const-string v8, "TYPE_SMS"

    .line 7
    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/4 v8, 0x7

    const-string v9, "TYPE_TEXT"

    .line 8
    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v9, 0x8

    const-string v10, "TYPE_URL"

    .line 9
    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v10, 0x9

    const-string v11, "TYPE_WIFI"

    .line 10
    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v11, 0xa

    const-string v12, "TYPE_GEO"

    .line 11
    invoke-direct {v0, v12, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v12, 0xb

    const-string v13, "TYPE_CALENDAR_EVENT"

    .line 12
    invoke-direct {v0, v13, v12, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v13, 0xc

    const-string v14, "TYPE_DRIVER_LICENSE"

    .line 13
    invoke-direct {v0, v14, v13, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    sget-object v15, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v15, v14, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v4

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v5

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v6

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v7

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v8

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v9

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v10

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v11

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzo:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzn:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zzo:I

    return p0
.end method
