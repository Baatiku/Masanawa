.class public final Lteam/opay/pay/kyc/KycDocumentUploadView;
.super Landroid/widget/FrameLayout;
.source "KycDocumentUploadView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/KycDocumentUploadView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 G2\u00020\u0001:\u0001HB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J=\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00182\u0014\u0010\u001a\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u000f0\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0011J\u001f\u0010!\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008!\u0010\u0011J\u0019\u0010$\u001a\u0004\u0018\u00010\u00122\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0019\u0010&\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0019\u0010*\u001a\u00020)2\u0008\u0010(\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008*\u0010+J?\u0010-\u001a\u00020\u000f2\u0014\u0010\u001a\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u000f0\u00192\u0008\u0010,\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008-\u0010.J)\u00101\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u00100\u001a\u00020/2\u0006\u0010,\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0019\u00104\u001a\u00020\u000f2\u0008\u0008\u0002\u00103\u001a\u00020)H\u0002\u00a2\u0006\u0004\u00084\u00105R\u0018\u00108\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u00103\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R&\u0010D\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010F\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010>\u00a8\u0006I"
    }
    d2 = {
        "Lteam/opay/pay/kyc/KycDocumentUploadView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/app/Activity;",
        "activity",
        "requestCode",
        "",
        "r",
        "(Landroid/app/Activity;I)V",
        "",
        "data",
        "B",
        "(Landroid/app/Activity;Ljava/lang/String;)V",
        "Landroid/content/ContentResolver;",
        "contentResolver",
        "Landroid/content/Intent;",
        "Lkotlin/Function1;",
        "callback",
        "u",
        "(Landroid/content/ContentResolver;ILandroid/content/Intent;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/content/res/TypedArray;",
        "m",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;",
        "j",
        "x",
        "Ljava/io/File;",
        "file",
        "n",
        "(Ljava/io/File;)Ljava/lang/String;",
        "l",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "dir",
        "",
        "k",
        "(Ljava/lang/String;)Z",
        "mimeType",
        "o",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/File;)V",
        "Landroid/net/Uri;",
        "uri",
        "w",
        "(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;",
        "hasFile",
        "z",
        "(Z)V",
        "a",
        "Landroid/net/Uri;",
        "previewUri",
        "Ln1g;",
        "b",
        "Ln1g;",
        "binding",
        "c",
        "Z",
        "d",
        "Ljava/lang/Integer;",
        "fileRequestCode",
        "e",
        "Lkotlin/jvm/functions/Function1;",
        "documentUploadCallback",
        "f",
        "disableFileUpload",
        "g",
        "Companion",
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


# static fields
.field public static final g:Lteam/opay/pay/kyc/KycDocumentUploadView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ln1g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/KycDocumentUploadView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/KycDocumentUploadView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/KycDocumentUploadView;->g:Lteam/opay/pay/kyc/KycDocumentUploadView$Companion;

    .line 8
    .line 9
    const-string v0, "application/pdf"

    .line 10
    .line 11
    const-string v1, "application/msword"

    .line 12
    .line 13
    const-string v2, "image/png"

    .line 14
    .line 15
    const-string v3, "image/jpeg"

    .line 16
    .line 17
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lteam/opay/pay/kyc/KycDocumentUploadView;->h:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lteam/opay/pay/R$layout;->view_user_upload:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lozf;->b(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ln1g;->bind(Landroid/view/View;)Ln1g;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 4
    invoke-virtual {p1}, Ln1g;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget v0, Lteam/opay/pay/R$layout;->view_user_upload:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lozf;->b(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ln1g;->bind(Landroid/view/View;)Ln1g;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 9
    invoke-virtual {v0}, Ln1g;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    sget p3, Lteam/opay/pay/R$layout;->view_user_upload:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p3, v2, v0, v1}, Lozf;->b(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    move-result-object p3

    .line 14
    invoke-static {p3}, Ln1g;->bind(Landroid/view/View;)Ln1g;

    move-result-object p3

    iput-object p3, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 15
    invoke-virtual {p3}, Ln1g;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    new-instance p3, Landroid/animation/LayoutTransition;

    invoke-direct {p3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 17
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;

    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/KycDocumentUploadView;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView;->z(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final C(Landroid/net/Uri;Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget p1, Lteam/opay/pay/R$string;->label_open_with:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {v0, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static synthetic a(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView;->t(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView;->y(Ljava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/net/Uri;Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->C(Landroid/net/Uri;Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->s(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/KycDocumentUploadView;->v(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic f(Ljava/lang/String;Lteam/opay/pay/kyc/KycDocumentUploadView;Ljava/io/File;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->q(Ljava/lang/String;Lteam/opay/pay/kyc/KycDocumentUploadView;Ljava/io/File;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/content/ContentResolver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/KycDocumentUploadView;->p(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/content/ContentResolver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lteam/opay/pay/kyc/KycDocumentUploadView;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView;->n(Ljava/io/File;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/pay/kyc/KycDocumentUploadView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/KycDocumentUploadView;->o(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final p(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/content/ContentResolver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->a:Landroid/net/Uri;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->w(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lrv7;

    .line 15
    .line 16
    invoke-direct {p2, p1, p0, p4}, Lrv7;-><init>(Ljava/lang/String;Lteam/opay/pay/kyc/KycDocumentUploadView;Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    const/4 p4, 0x0

    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    invoke-static {v0, v1, p2, p0, p4}, Lfke;->f(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final q(Ljava/lang/String;Lteam/opay/pay/kyc/KycDocumentUploadView;Ljava/io/File;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "getString(...)"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget p2, Lteam/opay/pay/R$string;->file_upload_warning:I

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget p2, Lteam/opay/pay/R$string;->file_upload_error:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p0, p1, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 54
    .line 55
    iget-object p0, p0, Ln1g;->g:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    const/4 p2, 0x0

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-static {p1, v0, p0, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->A(Lteam/opay/pay/kyc/KycDocumentUploadView;ZILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method public static final s(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;I)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView;->z(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->e:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->j(Landroid/app/Activity;I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final t(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->a:Landroid/net/Uri;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "extra_url"

    .line 22
    .line 23
    iget-object p0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->a:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lteam/opay/pay/kyc/KycPreviewDialog;->j:Lteam/opay/pay/kyc/KycPreviewDialog$Companion;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {p0, v2, v1, v2}, Lteam/opay/pay/kyc/KycPreviewDialog$Companion;->b(Lteam/opay/pay/kyc/KycPreviewDialog$Companion;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/fragment/app/DialogFragment;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "previewdialog"

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p0
.end method

.method public static final v(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 12
    .line 13
    const-string v2, "ENGLISH"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "toLowerCase(...)"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v3, ".gif"

    .line 30
    .line 31
    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_0
    return v1
.end method

.method public static final y(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    const-string v0, "uriList"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pathList"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "onSelected: uriList="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, "  pathList="

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final B(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->f:Z

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/KycDocumentUploadView;->z(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 22
    .line 23
    iget-object v0, v0, Ln1g;->g:Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 37
    .line 38
    iget-object v0, v0, Ln1g;->g:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v1, "labelKycUploadDocument"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lnv7;

    .line 46
    .line 47
    invoke-direct {v1, p2, p0, p1}, Lnv7;-><init>(Landroid/net/Uri;Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final j(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/KycDocumentUploadView;->x(Landroid/app/Activity;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_1
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p1, 0x1

    .line 30
    :goto_0
    return p1
.end method

.method public final l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "opay"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/KycDocumentUploadView;->k(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    return-object v0
.end method

.method public final m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/R$styleable;->KycDocumentUploadView:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 8
    .line 9
    iget-object p2, p2, Ln1g;->i:Landroid/widget/TextView;

    .line 10
    .line 11
    sget v0, Lteam/opay/pay/R$styleable;->KycDocumentUploadView_uu_required:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 27
    .line 28
    iget-object p2, p2, Ln1g;->f:Landroid/widget/TextView;

    .line 29
    .line 30
    sget v0, Lteam/opay/pay/R$styleable;->KycDocumentUploadView_uu_title:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v0, v1

    .line 40
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 44
    .line 45
    iget-object p2, p2, Ln1g;->e:Landroid/widget/TextView;

    .line 46
    .line 47
    sget v0, Lteam/opay/pay/R$styleable;->KycDocumentUploadView_uu_description:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move-object v0, v1

    .line 57
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 61
    .line 62
    iget-object p2, p2, Ln1g;->j:Landroid/widget/TextView;

    .line 63
    .line 64
    sget v0, Lteam/opay/pay/R$styleable;->KycDocumentUploadView_uu_types:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    move-object v1, v0

    .line 73
    :cond_3
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 77
    .line 78
    iget-object p2, p2, Ln1g;->h:Landroid/widget/TextView;

    .line 79
    .line 80
    const-string v0, "labelOptional"

    .line 81
    .line 82
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget v0, Lteam/opay/pay/R$styleable;->KycDocumentUploadView_uu_optional:I

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {p2, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    .line 97
    .line 98
    const-string p2, "apply(...)"

    .line 99
    .line 100
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object p1
.end method

.method public final n(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final o(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "image/png"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "image/jpeg"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->a:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_2
    iput-object p1, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->e:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    sget-object v0, Lteam/opay/pay/kyc/KycDocumentUploadView;->h:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 37
    .line 38
    const-string v2, "ENGLISH"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "toLowerCase(...)"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    :goto_3
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    sget p3, Lteam/opay/pay/R$string;->upload_unsupported_file:I

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string p3, "getString(...)"

    .line 75
    .line 76
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    .line 84
    .line 85
    new-instance v7, Lov7;

    .line 86
    .line 87
    move-object v1, v7

    .line 88
    move-object v2, p0

    .line 89
    move-object v3, p3

    .line 90
    move-object v4, p2

    .line 91
    move-object v5, p1

    .line 92
    move-object v6, p4

    .line 93
    invoke-direct/range {v1 .. v6}, Lov7;-><init>(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/content/ContentResolver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    .line 94
    .line 95
    .line 96
    const-string p1, "kyc-image"

    .line 97
    .line 98
    invoke-direct {v0, v7, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final r(Landroid/app/Activity;I)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->c:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/KycDocumentUploadView;->z(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->d:Ljava/lang/Integer;

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 18
    .line 19
    iget-object v0, v0, Ln1g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    .line 21
    const-string v1, "actionUpload"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lpv7;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1, p2}, Lpv7;-><init>(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;I)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 35
    .line 36
    iget-object p2, p2, Ln1g;->c:Landroid/view/View;

    .line 37
    .line 38
    const-string v0, "frameUploadDocument"

    .line 39
    .line 40
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lqv7;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1}, Lqv7;-><init>(Lteam/opay/pay/kyc/KycDocumentUploadView;Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final u(Landroid/content/ContentResolver;ILandroid/content/Intent;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "contentResolver"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->d:Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq p2, v0, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    if-eqz p3, :cond_5

    .line 24
    .line 25
    invoke-static {p3}, Lu09;->f(Landroid/content/Intent;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_5

    .line 30
    .line 31
    invoke-static {p3}, Lu09;->f(Landroid/content/Intent;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-gez p2, :cond_2

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_2
    invoke-static {p3}, Lu09;->f(Landroid/content/Intent;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "onDispatchResult->"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {p3}, Lu09;->f(Landroid/content/Intent;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-lez p2, :cond_5

    .line 69
    .line 70
    invoke-static {p3}, Lu09;->f(Landroid/content/Intent;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/String;

    .line 80
    .line 81
    if-nez p2, :cond_3

    .line 82
    .line 83
    const-string p2, ""

    .line 84
    .line 85
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v2, 0x1d

    .line 88
    .line 89
    if-ne v1, v2, :cond_4

    .line 90
    .line 91
    invoke-static {p3}, Lu09;->g(Landroid/content/Intent;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Landroid/net/Uri;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0, p3, p2}, Lcom/zhihu/matisse/util/MediaStoreUtils;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string/jumbo v0, "\u538b\u7f29\u524d\u7684\u56fe\u7247\u5730\u5740->"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    new-instance p3, Ljava/io/File;

    .line 124
    .line 125
    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p3}, Lteam/opay/pay/kyc/KycDocumentUploadView;->n(Ljava/io/File;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p0, p4, p2, p1, p3}, Lteam/opay/pay/kyc/KycDocumentUploadView;->o(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-static {p3}, Ltop/zibin/luban/b;->i(Landroid/content/Context;)Ltop/zibin/luban/b$b;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p3, p2}, Ltop/zibin/luban/b$b;->k(Ljava/lang/String;)Ltop/zibin/luban/b$b;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const/16 p3, 0x3c

    .line 149
    .line 150
    invoke-virtual {p2, p3}, Ltop/zibin/luban/b$b;->i(I)Ltop/zibin/luban/b$b;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    const-string v0, "getContext(...)"

    .line 159
    .line 160
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p3}, Lteam/opay/pay/kyc/KycDocumentUploadView;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p2, p3}, Ltop/zibin/luban/b$b;->m(Ljava/lang/String;)Ltop/zibin/luban/b$b;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    new-instance p3, Lmv7;

    .line 172
    .line 173
    invoke-direct {p3}, Lmv7;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Ltop/zibin/luban/b$b;->h(Lcl2;)Ltop/zibin/luban/b$b;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    new-instance p3, Lteam/opay/pay/kyc/KycDocumentUploadView$a;

    .line 181
    .line 182
    invoke-direct {p3, p0, p4, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView$a;-><init>(Lteam/opay/pay/kyc/KycDocumentUploadView;Lkotlin/jvm/functions/Function1;Landroid/content/ContentResolver;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p3}, Ltop/zibin/luban/b$b;->l(Lmka;)Ltop/zibin/luban/b$b;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Ltop/zibin/luban/b$b;->j()V

    .line 190
    .line 191
    .line 192
    :cond_5
    :goto_1
    return-void
.end method

.method public final w(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "getContext(...)"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    const/4 p2, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-static {p1}, Lom1;->c(Ljava/io/InputStream;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    :goto_0
    new-array v2, p2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    :try_start_2
    invoke-static {p1, v3}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    array-length v4, v2

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v6, "origin size = "

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_2
    const-string v4, "image/jpeg"

    .line 55
    .line 56
    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    const-string v4, "image/png"

    .line 63
    .line 64
    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    :cond_3
    array-length v4, v2

    .line 71
    const v5, 0x7d000

    .line 72
    .line 73
    .line 74
    if-le v4, v5, :cond_4

    .line 75
    .line 76
    sget-object v4, Lhd1;->a:Lhd1;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v6}, Ljmf;->r(Landroid/content/Context;)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v7}, Ljmf;->q(Landroid/content/Context;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v4, v2, v6, v1}, Lhd1;->c([BII)Landroid/graphics/Bitmap;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v4, v1, v5}, Lhd1;->b(Landroid/graphics/Bitmap;I)[B

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :cond_4
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    array-length p1, v2

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v4, "compress size = "

    .line 125
    .line 126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    :cond_5
    array-length p1, v2

    .line 133
    const/high16 v1, 0x200000

    .line 134
    .line 135
    if-le p1, v1, :cond_6

    .line 136
    .line 137
    return-object v3

    .line 138
    :cond_6
    invoke-static {v2, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_7

    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v1, "data:"

    .line 158
    .line 159
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p3, ";base64,"

    .line 166
    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 177
    return-object p1

    .line 178
    :goto_1
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    :catchall_1
    move-exception p3

    .line 180
    :try_start_4
    invoke-static {p1, p2}, Lsf2;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 184
    :catchall_2
    return-object v0
.end method

.method public final x(Landroid/app/Activity;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lu09;->b(Landroid/app/Activity;)Lu09;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/zhihu/matisse/MimeType;->ofImage()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lu09;->a(Ljava/util/Set;Z)Ldfd;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Ldfd;->d(Z)Ldfd;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Ldfd;->b(Z)Ldfd;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v1, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ".provider"

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "picture"

    .line 57
    .line 58
    invoke-direct {v1, v0, v2, v3}, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ldfd;->c(Lcom/zhihu/matisse/internal/entity/CaptureStrategy;)Ldfd;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Ldfd;->h(I)Ldfd;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/16 v1, 0x78

    .line 70
    .line 71
    invoke-static {v1}, Ljmf;->d(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {p1, v1}, Ldfd;->f(I)Ldfd;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v0}, Ldfd;->i(I)Ldfd;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const v1, 0x3f59999a    # 0.85f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ldfd;->m(F)Ldfd;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v1, Lcom/zhihu/matisse/engine/impl/GlideEngine;

    .line 91
    .line 92
    invoke-direct {v1}, Lcom/zhihu/matisse/engine/impl/GlideEngine;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ldfd;->g(Lfd7;)Ldfd;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v1, Lsv7;

    .line 100
    .line 101
    invoke-direct {v1}, Lsv7;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Ldfd;->j(Ljla;)Ldfd;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v0}, Ldfd;->k(Z)Ldfd;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v0}, Ldfd;->a(Z)Ldfd;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, p2}, Ldfd;->e(I)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 2
    .line 3
    iget-object v0, v0, Ln1g;->d:Landroid/widget/ImageView;

    .line 4
    .line 5
    const-string v1, "icAttachFill"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 16
    .line 17
    iget-object v0, v0, Ln1g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 18
    .line 19
    sget v1, Lteam/opay/pay/R$drawable;->shape_oval_red:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 25
    .line 26
    iget-object v0, v0, Ln1g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    .line 28
    sget v1, Lteam/opay/pay/R$drawable;->ic_delete:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 35
    .line 36
    iget-object v0, v0, Ln1g;->g:Landroid/widget/TextView;

    .line 37
    .line 38
    sget v1, Lteam/opay/pay/R$string;->kyc_upload_document:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 44
    .line 45
    iget-object v0, v0, Ln1g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    .line 47
    sget v1, Lteam/opay/pay/R$drawable;->shape_oval_mint:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->b:Ln1g;

    .line 53
    .line 54
    iget-object v0, v0, Ln1g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 55
    .line 56
    sget v1, Lteam/opay/pay/R$drawable;->ic_upload:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iput-boolean p1, p0, Lteam/opay/pay/kyc/KycDocumentUploadView;->c:Z

    .line 62
    .line 63
    return-void
.end method
