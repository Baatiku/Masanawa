.class public final Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
.super Ljava/lang/Object;
.source "CardDataRsp.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008&\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00bd\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u001a\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\r\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u001d\u00104\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\rH\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u001d\u00107\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\rH\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u00d5\u0001\u0010;\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u001c\u0008\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u001c\u0008\u0002\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\r2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u00c6\u0001J\u0013\u0010<\u001a\u00020=2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u00d6\u0003J\t\u0010@\u001a\u00020AH\u00d6\u0001J\t\u0010B\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001bR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR*\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010%R*\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010#R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010+\u00a8\u0006C"
    }
    d2 = {
        "Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;",
        "Ljava/io/Serializable;",
        "layerMaskUrl",
        "",
        "cardFaceUrl",
        "context",
        "viewDetailUrl",
        "activateCardUrl",
        "activateUrl",
        "activateContext",
        "buttonList",
        "Ljava/util/ArrayList;",
        "Lteam/opay/core/card/ButtonDto;",
        "Lkotlin/collections/ArrayList;",
        "inWaitPopupFrequency",
        "Lteam/opay/core/card/CardPopupFrequency;",
        "unInPopupFrequency",
        "adDto",
        "Lteam/opay/core/card/AdDto;",
        "homePageFloatingWindowDto",
        "Lteam/opay/core/card/HomePageFloatingWindowDto;",
        "physicalInWaitDto",
        "Lteam/opay/core/card/CardNotAppliedContentDto;",
        "physicalUnInDto",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V",
        "getLayerMaskUrl",
        "()Ljava/lang/String;",
        "getCardFaceUrl",
        "getContext",
        "getViewDetailUrl",
        "getActivateCardUrl",
        "getActivateUrl",
        "getActivateContext",
        "getButtonList",
        "()Ljava/util/ArrayList;",
        "getInWaitPopupFrequency",
        "()Lteam/opay/core/card/CardPopupFrequency;",
        "getUnInPopupFrequency",
        "getAdDto",
        "getHomePageFloatingWindowDto",
        "()Lteam/opay/core/card/HomePageFloatingWindowDto;",
        "getPhysicalInWaitDto",
        "()Lteam/opay/core/card/CardNotAppliedContentDto;",
        "getPhysicalUnInDto",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final activateCardUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activateCardUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final activateContext:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activateContext"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final activateUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activateUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final adDto:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adDto"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/AdDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final buttonList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buttonList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cardFaceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardFaceUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "context"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "homePageFloatingWindowDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inWaitPopupFrequency"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final layerMaskUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "layerMaskUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "physicalInWaitDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "physicalUnInDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unInPopupFrequency"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewDetailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewDetailUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/card/CardPopupFrequency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/card/CardPopupFrequency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lteam/opay/core/card/HomePageFloatingWindowDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lteam/opay/core/card/CardNotAppliedContentDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lteam/opay/core/card/CardNotAppliedContentDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;",
            "Lteam/opay/core/card/CardPopupFrequency;",
            "Lteam/opay/core/card/CardPopupFrequency;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/AdDto;",
            ">;",
            "Lteam/opay/core/card/HomePageFloatingWindowDto;",
            "Lteam/opay/core/card/CardNotAppliedContentDto;",
            "Lteam/opay/core/card/CardNotAppliedContentDto;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 10
    iput-object p9, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 11
    iput-object p10, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 12
    iput-object p11, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 13
    iput-object p12, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 14
    iput-object p13, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 15
    iput-object p14, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p12

    :goto_0
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_1

    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    move-object/from16 v16, p13

    :goto_1
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_2

    move-object/from16 v17, v2

    goto :goto_2

    :cond_2
    move-object/from16 v17, p14

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    .line 16
    invoke-direct/range {v3 .. v17}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;ILjava/lang/Object;)Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p15

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v2, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v3, p2

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-object v4, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object/from16 v4, p3

    .line 30
    .line 31
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    iget-object v5, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move-object/from16 v5, p4

    .line 39
    .line 40
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    iget-object v6, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move-object/from16 v6, p5

    .line 48
    .line 49
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 50
    .line 51
    if-eqz v7, :cond_5

    .line 52
    .line 53
    iget-object v7, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_5
    move-object/from16 v7, p6

    .line 57
    .line 58
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 59
    .line 60
    if-eqz v8, :cond_6

    .line 61
    .line 62
    iget-object v8, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :cond_6
    move-object/from16 v8, p7

    .line 66
    .line 67
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 68
    .line 69
    if-eqz v9, :cond_7

    .line 70
    .line 71
    iget-object v9, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move-object/from16 v9, p8

    .line 75
    .line 76
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 77
    .line 78
    if-eqz v10, :cond_8

    .line 79
    .line 80
    iget-object v10, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 81
    .line 82
    goto :goto_8

    .line 83
    :cond_8
    move-object/from16 v10, p9

    .line 84
    .line 85
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 86
    .line 87
    if-eqz v11, :cond_9

    .line 88
    .line 89
    iget-object v11, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 90
    .line 91
    goto :goto_9

    .line 92
    :cond_9
    move-object/from16 v11, p10

    .line 93
    .line 94
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 95
    .line 96
    if-eqz v12, :cond_a

    .line 97
    .line 98
    iget-object v12, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 99
    .line 100
    goto :goto_a

    .line 101
    :cond_a
    move-object/from16 v12, p11

    .line 102
    .line 103
    :goto_a
    and-int/lit16 v13, v1, 0x800

    .line 104
    .line 105
    if-eqz v13, :cond_b

    .line 106
    .line 107
    iget-object v13, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 108
    .line 109
    goto :goto_b

    .line 110
    :cond_b
    move-object/from16 v13, p12

    .line 111
    .line 112
    :goto_b
    and-int/lit16 v14, v1, 0x1000

    .line 113
    .line 114
    if-eqz v14, :cond_c

    .line 115
    .line 116
    iget-object v14, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 117
    .line 118
    goto :goto_c

    .line 119
    :cond_c
    move-object/from16 v14, p13

    .line 120
    .line 121
    :goto_c
    and-int/lit16 v1, v1, 0x2000

    .line 122
    .line 123
    if-eqz v1, :cond_d

    .line 124
    .line 125
    iget-object v1, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 126
    .line 127
    goto :goto_d

    .line 128
    :cond_d
    move-object/from16 v1, p14

    .line 129
    .line 130
    :goto_d
    move-object/from16 p1, v2

    .line 131
    .line 132
    move-object/from16 p2, v3

    .line 133
    .line 134
    move-object/from16 p3, v4

    .line 135
    .line 136
    move-object/from16 p4, v5

    .line 137
    .line 138
    move-object/from16 p5, v6

    .line 139
    .line 140
    move-object/from16 p6, v7

    .line 141
    .line 142
    move-object/from16 p7, v8

    .line 143
    .line 144
    move-object/from16 p8, v9

    .line 145
    .line 146
    move-object/from16 p9, v10

    .line 147
    .line 148
    move-object/from16 p10, v11

    .line 149
    .line 150
    move-object/from16 p11, v12

    .line 151
    .line 152
    move-object/from16 p12, v13

    .line 153
    .line 154
    move-object/from16 p13, v14

    .line 155
    .line 156
    move-object/from16 p14, v1

    .line 157
    .line 158
    invoke-virtual/range {p0 .. p14}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;)Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Lteam/opay/core/card/CardPopupFrequency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/AdDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Lteam/opay/core/card/HomePageFloatingWindowDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lteam/opay/core/card/CardPopupFrequency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;)Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lteam/opay/core/card/CardPopupFrequency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/core/card/CardPopupFrequency;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lteam/opay/core/card/HomePageFloatingWindowDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lteam/opay/core/card/CardNotAppliedContentDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lteam/opay/core/card/CardNotAppliedContentDto;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;",
            "Lteam/opay/core/card/CardPopupFrequency;",
            "Lteam/opay/core/card/CardPopupFrequency;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/AdDto;",
            ">;",
            "Lteam/opay/core/card/HomePageFloatingWindowDto;",
            "Lteam/opay/core/card/CardNotAppliedContentDto;",
            "Lteam/opay/core/card/CardNotAppliedContentDto;",
            ")",
            "Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v15, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 2
    .line 3
    move-object v0, v15

    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    move-object/from16 v5, p5

    .line 13
    .line 14
    move-object/from16 v6, p6

    .line 15
    .line 16
    move-object/from16 v7, p7

    .line 17
    .line 18
    move-object/from16 v8, p8

    .line 19
    .line 20
    move-object/from16 v9, p9

    .line 21
    .line 22
    move-object/from16 v10, p10

    .line 23
    .line 24
    move-object/from16 v11, p11

    .line 25
    .line 26
    move-object/from16 v12, p12

    .line 27
    .line 28
    move-object/from16 v13, p13

    .line 29
    .line 30
    move-object/from16 v14, p14

    .line 31
    .line 32
    invoke-direct/range {v0 .. v14}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lteam/opay/core/card/CardPopupFrequency;Lteam/opay/core/card/CardPopupFrequency;Ljava/util/ArrayList;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V

    .line 33
    .line 34
    .line 35
    return-object v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 124
    .line 125
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 135
    .line 136
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 146
    .line 147
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 157
    .line 158
    iget-object p1, p1, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 159
    .line 160
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    return v0
.end method

.method public final getActivateCardUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActivateContext()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActivateUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdDto()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/AdDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCardFaceUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInWaitPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayerMaskUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhysicalInWaitDto()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhysicalUnInDto()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnInPopupFrequency()Lteam/opay/core/card/CardPopupFrequency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewDetailUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Lteam/opay/core/card/CardPopupFrequency;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Lteam/opay/core/card/CardPopupFrequency;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Lteam/opay/core/card/HomePageFloatingWindowDto;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Lteam/opay/core/card/CardNotAppliedContentDto;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    goto :goto_d

    .line 175
    :cond_d
    invoke-virtual {v2}, Lteam/opay/core/card/CardNotAppliedContentDto;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    :goto_d
    add-int/2addr v0, v1

    .line 180
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->layerMaskUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->cardFaceUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->context:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->viewDetailUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateCardUrl:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateUrl:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->activateContext:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->buttonList:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->inWaitPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->unInPopupFrequency:Lteam/opay/core/card/CardPopupFrequency;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->adDto:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalInWaitDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->physicalUnInDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 30
    .line 31
    new-instance v15, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "PhysicalCardNativeUnActivatedUnInDto(layerMaskUrl="

    .line 37
    .line 38
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", cardFaceUrl="

    .line 45
    .line 46
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", context="

    .line 53
    .line 54
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", viewDetailUrl="

    .line 61
    .line 62
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", activateCardUrl="

    .line 69
    .line 70
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", activateUrl="

    .line 77
    .line 78
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", activateContext="

    .line 85
    .line 86
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", buttonList="

    .line 93
    .line 94
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", inWaitPopupFrequency="

    .line 101
    .line 102
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", unInPopupFrequency="

    .line 109
    .line 110
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", adDto="

    .line 117
    .line 118
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ", homePageFloatingWindowDto="

    .line 125
    .line 126
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", physicalInWaitDto="

    .line 133
    .line 134
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", physicalUnInDto="

    .line 141
    .line 142
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, ")"

    .line 149
    .line 150
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0
.end method
