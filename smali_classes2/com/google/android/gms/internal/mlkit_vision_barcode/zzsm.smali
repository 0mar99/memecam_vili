.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[B

.field public final zze:[Landroid/graphics/Point;

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zza:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzc:Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzd:[B

    const/4 v3, 0x4

    .line 5
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zze:[Landroid/graphics/Point;

    const/4 v3, 0x5

    .line 6
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzf:I

    const/4 v3, 0x6

    .line 7
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    const/4 v3, 0x7

    .line 8
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    const/16 v3, 0x8

    .line 9
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    const/16 v3, 0x9

    .line 10
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    const/16 v3, 0xa

    .line 11
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    const/16 v3, 0xb

    .line 12
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    const/16 v3, 0xc

    .line 13
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    const/16 v3, 0xd

    .line 14
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    const/16 v3, 0xe

    .line 15
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    const/16 v1, 0xf

    .line 16
    invoke-static {p1, v1, p0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 17
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zza:I

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzf:I

    return p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzse;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsg;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsj;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsk;

    return-object p0
.end method

.method public final zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsl;

    return-object p0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzn()[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzd:[B

    return-object p0
.end method

.method public final zzo()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zze:[Landroid/graphics/Point;

    return-object p0
.end method
