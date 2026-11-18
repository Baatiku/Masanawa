.class public final Lteam/opay/core/card/PhysicalCardNativeNotApplied;
.super Ljava/lang/Object;
.source "CardDataRsp.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00bb\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\r\u0012\u001a\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000b\u00104\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u001d\u00109\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\rH\u00c6\u0003J\u001d\u0010:\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\rH\u00c6\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0002\u0010*J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014H\u00c6\u0003J\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0014H\u00c6\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u001bH\u00c6\u0003J\u00d8\u0001\u0010A\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u001c\u0008\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\r2\u001c\u0008\u0002\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\r2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00142\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00c6\u0001\u00a2\u0006\u0002\u0010BJ\u0013\u0010C\u001a\u00020D2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u00d6\u0003J\t\u0010G\u001a\u00020\u0011H\u00d6\u0001J\t\u0010H\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001fR*\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000c\u0018\u0001`\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R*\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000bj\n\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\'R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010+\u001a\u0004\u0008)\u0010*R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001fR\u001e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u001e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010.R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103\u00a8\u0006I"
    }
    d2 = {
        "Lteam/opay/core/card/PhysicalCardNativeNotApplied;",
        "Ljava/io/Serializable;",
        "cardClassify",
        "",
        "physicalNotAppliedDto",
        "Lteam/opay/core/card/PhysicalCardNativeVisitor;",
        "instantUnFinishDto",
        "Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;",
        "cardDesignUrl",
        "protocolUrl",
        "introduceList",
        "Ljava/util/ArrayList;",
        "Lteam/opay/core/card/IntroduceContextDto;",
        "Lkotlin/collections/ArrayList;",
        "buttonList",
        "Lteam/opay/core/card/ButtonDto;",
        "campaign",
        "",
        "noApplyType",
        "cardDesignList",
        "",
        "Lteam/opay/core/card/CardDesignListData;",
        "homePageActivityAtmosphereDto",
        "Lteam/opay/core/card/HomePageActivityAtmosphereDto;",
        "homePageFloatingWindowDto",
        "Lteam/opay/core/card/HomePageFloatingWindowDto;",
        "physicalApplyingDto",
        "Lteam/opay/core/card/CardNotAppliedContentDto;",
        "<init>",
        "(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V",
        "getCardClassify",
        "()Ljava/lang/String;",
        "getPhysicalNotAppliedDto",
        "()Lteam/opay/core/card/PhysicalCardNativeVisitor;",
        "getInstantUnFinishDto",
        "()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;",
        "getCardDesignUrl",
        "getProtocolUrl",
        "getIntroduceList",
        "()Ljava/util/ArrayList;",
        "getButtonList",
        "getCampaign",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getNoApplyType",
        "getCardDesignList",
        "()Ljava/util/List;",
        "getHomePageActivityAtmosphereDto",
        "getHomePageFloatingWindowDto",
        "()Lteam/opay/core/card/HomePageFloatingWindowDto;",
        "getPhysicalApplyingDto",
        "()Lteam/opay/core/card/CardNotAppliedContentDto;",
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
        "copy",
        "(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)Lteam/opay/core/card/PhysicalCardNativeNotApplied;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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

.field private final campaign:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "campaign"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cardClassify:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardClassify"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cardDesignList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardDesignList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDesignListData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cardDesignUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cardDesignUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final homePageActivityAtmosphereDto:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "homePageActivityAtmosphereDto"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/card/HomePageActivityAtmosphereDto;",
            ">;"
        }
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

.field private final instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instantUnFinishDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final introduceList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "introduceList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final noApplyType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noApplyType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "physicalApplyingDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "physicalNotAppliedDto"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final protocolUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "protocolUrl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/PhysicalCardNativeVisitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
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
    .param p6    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/core/card/PhysicalCardNativeVisitor;",
            "Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDesignListData;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/HomePageActivityAtmosphereDto;",
            ">;",
            "Lteam/opay/core/card/HomePageFloatingWindowDto;",
            "Lteam/opay/core/card/CardNotAppliedContentDto;",
            ")V"
        }
    .end annotation

    const-string v0, "physicalNotAppliedDto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 4
    iput-object p3, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 5
    iput-object p4, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

    .line 8
    iput-object p7, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

    .line 9
    iput-object p8, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

    .line 10
    iput-object p9, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

    .line 12
    iput-object p11, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

    .line 13
    iput-object p12, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 14
    iput-object p13, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p12

    :goto_0
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    move-object/from16 v16, v2

    goto :goto_1

    :cond_1
    move-object/from16 v16, p13

    :goto_1
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

    .line 15
    invoke-direct/range {v3 .. v16}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;-><init>(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V

    return-void
.end method

.method public static synthetic copy$default(Lteam/opay/core/card/PhysicalCardNativeNotApplied;Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;ILjava/lang/Object;)Lteam/opay/core/card/PhysicalCardNativeNotApplied;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p14

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v3, p2

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget-object v4, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v4, p3

    .line 29
    .line 30
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 31
    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    iget-object v5, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-object/from16 v5, p4

    .line 38
    .line 39
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 40
    .line 41
    if-eqz v6, :cond_4

    .line 42
    .line 43
    iget-object v6, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-object/from16 v6, p5

    .line 47
    .line 48
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 49
    .line 50
    if-eqz v7, :cond_5

    .line 51
    .line 52
    iget-object v7, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_5
    move-object/from16 v7, p6

    .line 56
    .line 57
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 58
    .line 59
    if-eqz v8, :cond_6

    .line 60
    .line 61
    iget-object v8, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_6
    move-object/from16 v8, p7

    .line 65
    .line 66
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 67
    .line 68
    if-eqz v9, :cond_7

    .line 69
    .line 70
    iget-object v9, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

    .line 71
    .line 72
    goto :goto_7

    .line 73
    :cond_7
    move-object/from16 v9, p8

    .line 74
    .line 75
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 76
    .line 77
    if-eqz v10, :cond_8

    .line 78
    .line 79
    iget-object v10, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_8

    .line 82
    :cond_8
    move-object/from16 v10, p9

    .line 83
    .line 84
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 85
    .line 86
    if-eqz v11, :cond_9

    .line 87
    .line 88
    iget-object v11, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

    .line 89
    .line 90
    goto :goto_9

    .line 91
    :cond_9
    move-object/from16 v11, p10

    .line 92
    .line 93
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 94
    .line 95
    if-eqz v12, :cond_a

    .line 96
    .line 97
    iget-object v12, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

    .line 98
    .line 99
    goto :goto_a

    .line 100
    :cond_a
    move-object/from16 v12, p11

    .line 101
    .line 102
    :goto_a
    and-int/lit16 v13, v1, 0x800

    .line 103
    .line 104
    if-eqz v13, :cond_b

    .line 105
    .line 106
    iget-object v13, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 107
    .line 108
    goto :goto_b

    .line 109
    :cond_b
    move-object/from16 v13, p12

    .line 110
    .line 111
    :goto_b
    and-int/lit16 v1, v1, 0x1000

    .line 112
    .line 113
    if-eqz v1, :cond_c

    .line 114
    .line 115
    iget-object v1, v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 116
    .line 117
    goto :goto_c

    .line 118
    :cond_c
    move-object/from16 v1, p13

    .line 119
    .line 120
    :goto_c
    move-object p1, v2

    .line 121
    move-object/from16 p2, v3

    .line 122
    .line 123
    move-object/from16 p3, v4

    .line 124
    .line 125
    move-object/from16 p4, v5

    .line 126
    .line 127
    move-object/from16 p5, v6

    .line 128
    .line 129
    move-object/from16 p6, v7

    .line 130
    .line 131
    move-object/from16 p7, v8

    .line 132
    .line 133
    move-object/from16 p8, v9

    .line 134
    .line 135
    move-object/from16 p9, v10

    .line 136
    .line 137
    move-object/from16 p10, v11

    .line 138
    .line 139
    move-object/from16 p11, v12

    .line 140
    .line 141
    move-object/from16 p12, v13

    .line 142
    .line 143
    move-object/from16 p13, v1

    .line 144
    .line 145
    invoke-virtual/range {p0 .. p13}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->copy(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDesignListData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/card/HomePageActivityAtmosphereDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Lteam/opay/core/card/HomePageFloatingWindowDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lteam/opay/core/card/PhysicalCardNativeVisitor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)Lteam/opay/core/card/PhysicalCardNativeNotApplied;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/PhysicalCardNativeVisitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
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
    .param p6    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/core/card/PhysicalCardNativeVisitor;",
            "Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/ButtonDto;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDesignListData;",
            ">;",
            "Ljava/util/List<",
            "Lteam/opay/core/card/HomePageActivityAtmosphereDto;",
            ">;",
            "Lteam/opay/core/card/HomePageFloatingWindowDto;",
            "Lteam/opay/core/card/CardNotAppliedContentDto;",
            ")",
            "Lteam/opay/core/card/PhysicalCardNativeNotApplied;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "physicalNotAppliedDto"

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move-object/from16 v2, p1

    .line 12
    .line 13
    move-object/from16 v4, p3

    .line 14
    .line 15
    move-object/from16 v5, p4

    .line 16
    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move-object/from16 v8, p7

    .line 22
    .line 23
    move-object/from16 v9, p8

    .line 24
    .line 25
    move-object/from16 v10, p9

    .line 26
    .line 27
    move-object/from16 v11, p10

    .line 28
    .line 29
    move-object/from16 v12, p11

    .line 30
    .line 31
    move-object/from16 v13, p12

    .line 32
    .line 33
    move-object/from16 v14, p13

    .line 34
    .line 35
    invoke-direct/range {v1 .. v14}, Lteam/opay/core/card/PhysicalCardNativeNotApplied;-><init>(Ljava/lang/String;Lteam/opay/core/card/PhysicalCardNativeVisitor;Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lteam/opay/core/card/HomePageFloatingWindowDto;Lteam/opay/core/card/CardNotAppliedContentDto;)V

    .line 36
    .line 37
    .line 38
    return-object v0
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
    instance-of v1, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;

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
    check-cast p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

    .line 124
    .line 125
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 135
    .line 136
    iget-object v3, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

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
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 146
    .line 147
    iget-object p1, p1, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 148
    .line 149
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    return v0
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
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaign()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCardClassify()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCardDesignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/card/CardDesignListData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCardDesignUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHomePageActivityAtmosphereDto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/card/HomePageActivityAtmosphereDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHomePageFloatingWindowDto()Lteam/opay/core/card/HomePageFloatingWindowDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInstantUnFinishDto()Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIntroduceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lteam/opay/core/card/IntroduceContextDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNoApplyType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhysicalApplyingDto()Lteam/opay/core/card/CardNotAppliedContentDto;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhysicalNotAppliedDto()Lteam/opay/core/card/PhysicalCardNativeVisitor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProtocolUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

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
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 15
    .line 16
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeVisitor;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_2
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_3
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    :goto_4
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

    .line 76
    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_5
    add-int/2addr v0, v2

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    .line 88
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

    .line 89
    .line 90
    if-nez v2, :cond_6

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    goto :goto_6

    .line 94
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    :goto_6
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    .line 100
    .line 101
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v2, :cond_7

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    goto :goto_7

    .line 107
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    :goto_7
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    .line 113
    .line 114
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

    .line 115
    .line 116
    if-nez v2, :cond_8

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    goto :goto_8

    .line 120
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    :goto_8
    add-int/2addr v0, v2

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    .line 126
    .line 127
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

    .line 128
    .line 129
    if-nez v2, :cond_9

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    goto :goto_9

    .line 133
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    :goto_9
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    .line 140
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 141
    .line 142
    if-nez v2, :cond_a

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    goto :goto_a

    .line 146
    :cond_a
    invoke-virtual {v2}, Lteam/opay/core/card/HomePageFloatingWindowDto;->hashCode()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    :goto_a
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    .line 153
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 154
    .line 155
    if-nez v2, :cond_b

    .line 156
    .line 157
    goto :goto_b

    .line 158
    :cond_b
    invoke-virtual {v2}, Lteam/opay/core/card/CardNotAppliedContentDto;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    :goto_b
    add-int/2addr v0, v1

    .line 163
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardClassify:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalNotAppliedDto:Lteam/opay/core/card/PhysicalCardNativeVisitor;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->instantUnFinishDto:Lteam/opay/core/card/PhysicalCardNativeUnActivatedUnInDto;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->protocolUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->introduceList:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v6, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->buttonList:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->campaign:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->noApplyType:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->cardDesignList:Ljava/util/List;

    .line 20
    .line 21
    iget-object v10, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageActivityAtmosphereDto:Ljava/util/List;

    .line 22
    .line 23
    iget-object v11, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->homePageFloatingWindowDto:Lteam/opay/core/card/HomePageFloatingWindowDto;

    .line 24
    .line 25
    iget-object v12, p0, Lteam/opay/core/card/PhysicalCardNativeNotApplied;->physicalApplyingDto:Lteam/opay/core/card/CardNotAppliedContentDto;

    .line 26
    .line 27
    new-instance v13, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v14, "PhysicalCardNativeNotApplied(cardClassify="

    .line 33
    .line 34
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", physicalNotAppliedDto="

    .line 41
    .line 42
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", instantUnFinishDto="

    .line 49
    .line 50
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", cardDesignUrl="

    .line 57
    .line 58
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", protocolUrl="

    .line 65
    .line 66
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", introduceList="

    .line 73
    .line 74
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", buttonList="

    .line 81
    .line 82
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", campaign="

    .line 89
    .line 90
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ", noApplyType="

    .line 97
    .line 98
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ", cardDesignList="

    .line 105
    .line 106
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ", homePageActivityAtmosphereDto="

    .line 113
    .line 114
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, ", homePageFloatingWindowDto="

    .line 121
    .line 122
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ", physicalApplyingDto="

    .line 129
    .line 130
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v0, ")"

    .line 137
    .line 138
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0
.end method
