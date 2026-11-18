.class public final Lteam/opay/core/widget/TextInputView$b;
.super Landroid/text/method/DigitsKeyListener;
.source "TextInputView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/widget/TextInputView;->l(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/core/widget/TextInputView$b",
        "Landroid/text/method/DigitsKeyListener;",
        "",
        "getAcceptedChars",
        "()[C",
        "",
        "getInputType",
        "()I",
        "common-base_release"
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
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/widget/TextInputView$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/core/widget/TextInputView$b;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAcceptedChars()[C
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/TextInputView$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "toCharArray(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/widget/TextInputView$b;->b:I

    .line 2
    .line 3
    return v0
.end method
