.class public Lcom/android/camera/hdr10/HDR10Characteristics;
.super Ljava/lang/Object;
.source "HDR10Characteristics.java"


# static fields
.field public static AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final HDR10PLUS_MODE:I = 0x2

.field public static final HDR10PRO_MODE:I = 0x3

.field public static final HDR10_MODE:I = 0x1

.field public static final NONE_MODE:I = 0x0

.field public static final SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HDR10Characteristics"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO0O0;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->SUPPORT_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    .line 2
    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOoo/OooO00o;

    const-class v1, [Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/camera2/vendortag/CameraCharacteristicsVendorTags;->create(Ljava/util/function/Supplier;Ljava/lang/Class;)Lcom/android/camera2/vendortag/VendorTag;

    move-result-object v0

    sput-object v0, Lcom/android/camera/hdr10/HDR10Characteristics;->AVAILABLE_CONFIGURATIONS:Lcom/android/camera2/vendortag/VendorTag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xiaomi.videohdrmode.value"

    return-object v0
.end method

.method public static synthetic OooO0O0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaomi.HDRVideoDisplayMode.availableconfigurations"

    return-object v0
.end method
